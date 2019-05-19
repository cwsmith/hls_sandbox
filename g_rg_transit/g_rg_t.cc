#include <stdlib.h>
#include <stdio.h>
#include <cassert>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;
#define MAX_ADJ 16
#define MAX_NUM 8
using Adj_t=hlslib::DataPack<int,MAX_ADJ>;

void readItems(int num,Adj_t* adjs, Adj_t &cnt,  Stream<int> &i_out){
  readAdj0: for(int i=0; i<MAX_ADJ*num; i++) {
    #pragma HLS PIPELINE
    int item=adjs[i/MAX_ADJ].Get(i%MAX_ADJ);
    i_out.Push(item);
  }
}

void storeItems(int num, Adj_t &cnt, Stream<int> &i_in){
  readAdj1: for(int i=0; i<MAX_ADJ*num; i++) {
    #pragma HLS PIPELINE
    int item=i_in.Pop();
    if (item!=-1){
      cnt.Set(item, (cnt.Get(item))+1);
    }
  }
}

void writeResult(Adj_t cnt, Adj_t& out){
  write: for (int i=0; i<MAX_ADJ;i++){
    #pragma HLS PIPELINE
    if (cnt.Get(i)>0){
        printf("i:%d ", i);
        ShiftOut: for (int j=MAX_ADJ-1;j>0;j--){
          #pragma HLS UNROLL
          out.Set(j,out.Get(j-1));
        }
      out.Set(0,i);
    }
  }
}
void unite(int num, Adj_t* u_adjs, Adj_t & adj_out){
  #pragma HLS INTERFACE s_axilite	port=num	bundle=control
  #pragma HLS INTERFACE m_axi port=u_adjs bundle=gmem0 offset=slave
  #pragma HLS INTERFACE s_axilite port=return
  using Adj_t=hlslib::DataPack<int,MAX_ADJ>;
  adj_out.Fill(-1);
  Adj_t count;
  count.Fill(0);
  
  Stream<int> pipe;
  
  HLSLIB_DATAFLOW_INIT();
  HLSLIB_DATAFLOW_FUNCTION(readItems,num,u_adjs,count,pipe);
  HLSLIB_DATAFLOW_FUNCTION(storeItems,num,count,pipe);
  HLSLIB_DATAFLOW_FINALIZE();
  writeResult(count,adj_out);
 
  printf("\n------Done------\n");
}

void g_rg_t(int N,Adj_t* rg, Adj_t* g, Adj_t* out, Adj_t* adjs){
  #pragma HLS INTERFACE s_axilite port=N	bundle=control
  #pragma HLS INTERFACE m_axi port=rg	bundle=gmem	offset=slave
  #pragma HLS INTERFACE m_axi port=g	bundle=gmem	offset=slave
  #pragma HLS INTERFACE m_axi port=out	bundle=gmem	offset=slave
  #pragma HLS INTERFACE m_axi port=adjs	bundle=gmem	offset=slave
  transit_loop_rg: for (int i=0;i<N;i++){
    #pragma HLS PIPELINE
    printf("Reading uniting rg adjs %d \n",i);
    Adj_t g_adj = g[i];
    Adj_t adj_out;
    adj_out.Fill(-1);
    int numadjs=0;
    init_adjs:for (int a=0;a<8;a++){
      #pragma HLS UNROLL
      adjs[a].Fill(-1);
    }
    count_adjs:for (int j=0; j<MAX_ADJ; j++){
      #pragma HLS UNROLL
      if (g_adj.Get(j)!=-1){
        numadjs++;
      }
      else continue;
    }
    shift_build_adjs:for (int j=0; j<MAX_ADJ; j++){
      #pragma HLS UNROLL
      if (g_adj.Get(j)!=-1){
        build_loop:for (int b=numadjs;b>0;b--){
          #pragma HLS UNROLL
          adjs[b]=adjs[b-1];
        }
        adjs[0]=rg[g_adj.Get(j)];
      }
      else continue;
    }
    unite(numadjs,adjs,adj_out);
    remove_self: for (int a=0;a<MAX_ADJ;a++){
      #pragma HLS UNROLL
      if (i==adj_out.Get(a)) adj_out.Set(a,-1);
    }
    out[i]=adj_out;

  }
}

int main() {
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
  
  Adj_t adjs[8];
  g_rg_t(N,rg,g,output_g,adjs);
  
  //print output graph
  printf("This is output graph:\n");
  for (int i=0; i<numPar_g; i++){
    for (int j=0; j<MAX_ADJ; j++){
      if (output_g[i].Get(j)!=-1)
      printf("%d ", output_g[i].Get(j));
    } 
    printf("\n");
  }

  return 0;
}
