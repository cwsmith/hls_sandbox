#include <stdlib.h>
#include <stdio.h>
#include <cassert>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;
#define MAX_ADJ 32
using Adj_t=hlslib::DataPack<int,MAX_ADJ>;

void readItem(Adj_t adj, Adj_t &out, Stream<int> &i_out, Stream<int> &i_in){
  readAdj1: for(int i=0; i<MAX_ADJ; i++) {
    if (i!=0) int item_d = i_in.Pop();
    #pragma HLS PIPELINE
    int item=adj.Get(i);
    if (item!=-1){
      ShiftOut: for (int j=MAX_ADJ-1;j>0;j--){
        #pragma HLS PIPELINE
        out.Set(j,out.Get(j-1));
      }
      out.Set(0, item);
    }
    i_out.Push(item);
  continue;
  }
}

void readCompare(Adj_t adj2,Adj_t adj1, Adj_t &out, Stream<int> &i_in, Stream<int> &i_out){
  readAdj2: for (int i=0;i<MAX_ADJ;i++){
    #pragma HLS PIPELINE
    const int item=i_in.Pop();
    int item2=adj2.Get(i);
    int flag=0;
    if (item2!=-1){
      Compare: for (int j=0;j<MAX_ADJ;j++){
        #pragma HLS PIPELINE
        if (item2!=-1 and item2==adj1.Get(j)) {
          flag=1;
          break;
        }
      }
      if (flag==0){
        if (out.Get(MAX_ADJ-1)!=-1){
          fprintf(stderr,"Union output overloaded\n");
          exit(EXIT_FAILURE);
        }
        ShiftOut: for (int j=MAX_ADJ-1;j>0;j--){
          #pragma HLS PIPELINE
          out.Set(j,out.Get(j-1));
        }
        out.Set(0,item2);
      }
    }
    i_out.Push(item);
  }
}

void unite(Adj_t& adj1, Adj_t adj2){
  #pragma HLS INTERFACE s_axilite	port=adj1	bundle=control
  #pragma HLS INTERFACE s_axilite	port=adj2	bundle=control
  Stream<int> items1("1_in_2_out");
  Stream<int> delay("2_in_1_out");
  Adj_t adj_out;
  adj_out.Fill(-1);

  HLSLIB_DATAFLOW_INIT();
  HLSLIB_DATAFLOW_FUNCTION(readItem,adj1,adj_out,items1,delay);
  HLSLIB_DATAFLOW_FUNCTION(readCompare,adj2,adj1,adj_out,items1,delay);
  HLSLIB_DATAFLOW_FINALIZE();
 
  delay.Pop();

  //Assign out back to adj1
  for (int i=0; i<MAX_ADJ;i++){
    adj1.Set(i,adj_out.Get(i));
  }
  printf("\nUnion Adj1: ");
  for (int i=0;i<MAX_ADJ;i++){
    if (adj1.Get(i)!=-1) printf("%d ",adj1.Get(i));
  }
  printf("\n------Done------\n");
}

void g_rg_t(int N,Adj_t* rg, Adj_t* g, Adj_t* out){
  #pragma HLS INTERFACE s_axilite port=N	bundle=control
  #pragma HLS INTERFACE m_axi port=rg	bundle=gmem	offset=slave
  #pragma HLS INTERFACE m_axi port=g	bundle=gmem	offset=slave
  #pragma HLS INTERFACE m_axi port=out	bundle=gmem	offset=slave
  transit_loop_rg: for (int i=0;i<N;i++){
    #pragma HLS PIPELINE
    printf("Reading uniting rg adjs %d \n",i);
    Adj_t g_adj = g[i];
    Adj_t adj_out;
    adj_out.Fill(-1);
    transit_unite_rg:for (int j=0; j<MAX_ADJ; j++){
      #pragma HLS PIPELINE
      if (g_adj.Get(j)!=-1){
        unite(adj_out,rg[g_adj.Get(j)]);
      }
      else continue;
    }
    printf("adj_out: ");
    for (int j=0; j<MAX_ADJ;j++) {
      if (adj_out.Get(j)!=0)
      printf("%d ",adj_out.Get(j));
    }
    //adjs2.Push(adj_out);
    out[i]=adj_out;

  }
}

int main() {
  //rg:
  //rg:
  int numPar_rg=3;
  Adj_t rg[1024];
  Adj_t adj1; //[0,1,2]
  Adj_t adj2; //[0,2,3]
  Adj_t adj3; //[2,3,4]

  int numPar_g=5;
  Adj_t g[1024];
  Adj_t adj4; //[0,1]
  Adj_t adj5; //[0]
  Adj_t adj6; //[0,1,2]
  Adj_t adj7; //[1,2]
  Adj_t adj8; //[2]

  adj1.Fill(-1);adj1.Set(0,0);adj1.Set(1,1);adj1.Set(2,2);
  adj2.Fill(-1);adj2.Set(0,0);adj2.Set(1,2);adj2.Set(2,3);
  adj3.Fill(-1);adj3.Set(0,2);adj3.Set(1,3);adj3.Set(2,4);

  adj4.Fill(-1);adj4.Set(0,0);adj4.Set(1,1);
  adj5.Fill(-1);adj5.Set(0,0);
  adj6.Fill(-1);adj6.Set(0,0);adj6.Set(1,1);adj6.Set(2,2);
  adj7.Fill(-1);adj7.Set(0,1);adj7.Set(1,2);
  adj8.Fill(-1); adj8.Set(0,2);

  rg[0]=adj1;rg[1]=adj2;rg[2]=adj3;
  g[0]=adj4;g[1]=adj5;g[2]=adj6;g[3]=adj7;g[4]=adj8;
  
  //print input g
  printf("This is g:\n");
  for (int i=0; i<5; i++){
    for (int j=0;j<MAX_ADJ;j++){
      if (g[i].Get(j)!=-1) printf("%d ", g[i].Get(j));
    }
    printf("\n");
  }

  //print input rg
  printf("This is rg:\n");
  for (int i=0; i<3; i++){
    for (int j=0;j<MAX_ADJ;j++){
      if (rg[i].Get(j)!=-1) printf("%d ", rg[i].Get(j));
    }
    printf("\n");
  }

  const int N=numPar_g;
  Adj_t output_g[1024];
  Store_output: for (int i=0; i<1024; i++){
    #pragma HLS PIPELINE
    output_g[i].Fill(-1);
  }
  
  g_rg_t(N,rg,g,output_g);
  
  //print output graph
  printf("This is output graph:\n");
  for (int i=0; i<numPar_g; i++){
    for (int j=0; j<MAX_ADJ; j++){
      if (output_g[i].Get(j)!=-1)
      printf("%d ", output_g[i].Get(j));
    } 
    printf("\n");
  }
  //g_rg_t(5,3,g,rg);

  return 0;
}
