#include <stdlib.h>
#include <stdio.h>
#include <cassert>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;
#define MAX_ADJ 32
using Adj_t=hlslib::DataPack<int,MAX_ADJ>;

void readItem(Adj_t adj, Adj_t &out, Stream<int> &i_out){
  unite_readAdj1: for(int i=0; i<MAX_ADJ; i++) {
    #pragma HLS PIPELINE
    int item=adj.Get(i);
    if (item==-1){
      out.Set(i,item);
    }
    i_out.Push(item);
  continue;
  }
}

void readCompare(Adj_t adj2, Adj_t &out, Stream<int> &i_in){
  unite_readAdj2: for (int i=0;i<MAX_ADJ;i++){
    #pragma HLS PIPELINE
    const int item=i_in.Pop();
    int item2=adj2.Get(i);
    int flag=0;
    unite_Compare: for (int j=1;j<MAX_ADJ;j++){
      if (item2!=-1 and item2==out.Get(j)) {
        flag=1;
        break;
      }
    }
    if (flag==0){
      unite_ShiftOut: for (int j=MAX_ADJ-1;j>0;j--){
        out.Set(j,out.Get(j-1));
      }
      out.Set(0,item2);
    }
  }
}

//Helper function to check solution
int int_in_adj(const int a, Adj_t adj){
  int flag=0;
  for (int i=0; i<MAX_ADJ;i++){
    if (a==adj.Get(i)) flag=1;
  }
  return flag;
}

void check_sol(Adj_t adj1, Adj_t adj2, Adj_t adj_out){
  for (int i=0; i<MAX_ADJ; i++){
    if (adj1.Get(i)!=-1){
        if (int_in_adj(adj1.Get(i),adj_out)==0) printf("\nSolution check: Nop");
    } 
    if (adj2.Get(i)!=-1){
        if (int_in_adj(adj2.Get(i),adj_out)==0) printf("\nSolution check: Nop"); 
    }  
  }
  printf("\nSolution check: Correct :D");
}
void unite(Adj_t& adj1, Adj_t adj2){
  #pragma HLS INTERFACE s_axilite	port=adj1	bundle=control
  #pragma HLS INTERFACE s_axilite	port=adj2	bundle=control
  Stream<int> items1("1_in_2_out");
  Adj_t adj_out;
  adj_out.Fill(-1);

  HLSLIB_DATAFLOW_INIT();
  HLSLIB_DATAFLOW_FUNCTION(readItem,adj1,adj_out,items1);
  HLSLIB_DATAFLOW_FUNCTION(readCompare,adj2,adj_out,items1);
  HLSLIB_DATAFLOW_FINALIZE();
 
  printf("First Adj: ");
  for (int i=0;i<MAX_ADJ;i++){
    if (adj1.Get(i)!=-1){
      printf("%d ",adj1.Get(i));
    }
  }
  printf("\nSecond Adj: ");
  for (int i=0;i<MAX_ADJ;i++){
    if (adj2.Get(i)!=-1){
      printf("%d ",adj2.Get(i));
    }
  }
  printf("\nUnion Adj: ");
  for (int i=0;i<MAX_ADJ;i++){
    if (adj_out.Get(i)!=-1){
      printf("%d ",adj_out.Get(i));
    }
  }
  check_sol(adj1,adj2,adj_out);
  printf("\n------Done------\n");
  
  adj1=adj_out;
}

void Read_g_adjs(int N, Adj_t* g, Stream<Adj_t>& adjs1){
  transit_read_g: for (int i=0;i<N;i++){
    #pragma HLS PIPELINE
    adjs1.Push(g[i]);
  }
}

void Read_unite_rg_adjs(int N,Adj_t* rg, Stream<Adj_t>& adjs1, Stream<Adj_t>& adjs2){
  transit_loop_rg: for (int i=0;i<N;i++){
    #pragma HLS PIPELINE
    Adj_t g_adj = adjs1.Pop();
    Adj_t adj_out;
    adj_out.Fill(-1);
    transit_unite_rg:for (int j=0; j<MAX_ADJ; j++){
      #pragma HLS PIPELINE
      if (g_adj[j]!=-1){
        unite(adj_out,rg[g_adj[j]]);
      }
      else continue;
    }
    adjs2.Push(adj_out);
  }
}

void Write_g_adjs(int N,Adj_t* output_g, Stream<Adj_t>& adjs2){
  transit_write_g:for (int i=0;i<N;i++){
    #pragma HLS PIPELINE
    Adj_t adj_out=adjs2.Pop();
    output_g[i]=adj_out;
  }
}

void g_rg_t(int numPar_g, int numPar_rg){
  #pragma HLS INTERFACE s_axilite port=numPar_g	bundle=control
  #pragma HLS INTERFACE s_axilite port=numPar_rg bundle=control
  //rg:
  //int numPar_rg=3;
  Adj_t rg[1024];
  Adj_t adj1; //[0,1,2]
  Adj_t adj2; //[0,2,3]
  Adj_t adj3; //[2,3,4]

  //int numPar_g=5;
  Adj_t g[1024];
  Adj_t adj4; //[0,1]
  Adj_t adj5; //[0]
  Adj_t adj6; //[0,1,2]
  Adj_t adj7; //[1,2]
  Adj_t adj8; //[2]

  adj1.Fill(-1);adj1.Set(0,0);adj1.Set(1,1);adj1.Set(2,2);
  adj2.Fill(-1);adj1.Set(0,0);adj1.Set(1,2);adj1.Set(2,3);
  adj3.Fill(-1);adj3.Set(0,2);adj3.Set(1,3);adj3.Set(2,4);

  adj4.Fill(-1);adj4.Set(0,0);adj4.Set(1,1);
  adj5.Fill(-1);adj5.Set(0,0);
  adj6.Fill(-1);adj6.Set(0,0);adj6.Set(1,1);adj6.Set(2,2);
  adj7.Fill(-1);adj7.Set(0,1);adj7.Set(1,2);
  adj8.Fill(-1); adj8.Set(0,2);

  rg[0]=adj1;rg[1]=adj2;rg[2]=adj3;
  g[0]=adj4;g[1]=adj5;g[2]=adj6;g[3]=adj7;g[4]=adj8;
  
  Stream<Adj_t> adjs1("1_in_2_out");
  Stream<Adj_t> adjs2("2_in_3_out");
  const int N=numPar_g;
  Adj_t output_g[1024];
  Store_output: for (int i=0; i<1024; i++){
    #pragma HLS PIPELINE
    output_g[i].Fill(-1);
  }
  HLSLIB_DATAFLOW_INIT();
  HLSLIB_DATAFLOW_FUNCTION(Read_g_adjs,N,g,adjs1);
  HLSLIB_DATAFLOW_FUNCTION(Read_unite_rg_adjs,N,rg,adjs1,adjs2);
  HLSLIB_DATAFLOW_FUNCTION(Write_g_adjs,N,output_g,adjs2);
  HLSLIB_DATAFLOW_FINALIZE();

}

int main() {
  //rg:

  g_rg_t(5,3);
//  unite(adj1,adj2);
//  unite(adj3,adj4);
//  unite(adj5,adj6);
//  unite(adj7,adj8);

  return 0;
}
