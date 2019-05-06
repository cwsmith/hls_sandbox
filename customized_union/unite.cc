#include <stdlib.h>
#include <stdio.h>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;
#define MAX_ADJ 32
using Adj_t=hlslib::DataPack<int,MAX_ADJ>;

void readItem0(Adj_t adj, Adj_t &cnt,  Stream<int> &i_out){
  readAdj1: for(int i=0; i<MAX_ADJ; i++) {
  //  if (i!=0) int item_d = i_in.Pop();
    #pragma HLS PIPELINE
    //int item_p=i_in.Pop();
    int item=adj.Get(i);
    if (item!=-1){
      cnt.Set(item, cnt.Get(item)+1);
    }
    i_out.Push(item);
  //continue;
  }
}

void readItem(Adj_t adj, Adj_t &cnt, Stream<int> &i_in, Stream<int> &i_out){
  readAdj1: for(int i=0; i<MAX_ADJ; i++) {
  //  if (i!=0) int item_d = i_in.Pop();
    #pragma HLS PIPELINE
    int item_p=i_in.Pop();
    int item=adj.Get(i);
    if (item!=-1){
      cnt.Set(item, (cnt.Get(item))+1);
    }
    i_out.Push(item);
  //continue;
  }
}
void writeResult(Adj_t cnt, Adj_t& out, Stream<int> & i_in){
  write: for (int i=0; i<MAX_ADJ;i++){
    #pragma HLS PIPELINE
    int item=i_in.Pop();
    if (cnt.Get(i)>0){
        ShiftOut: for (int j=MAX_ADJ-1;j>0;j--){
          #pragma HLS UNROLL
          out.Set(j,out.Get(j-1));
        }
      out.Set(0,i);
    }
  }
}
void writeResultf(Adj_t cnt, Adj_t& out){
  write: for (int i=0; i<MAX_ADJ;i++){
    #pragma HLS PIPELINE
    if (cnt.Get(i)>0){
        ShiftOut: for (int j=MAX_ADJ-1;j>0;j--){
          #pragma HLS UNROLL
          out.Set(j,out.Get(j-1));
        }
      out.Set(0,i);
    }
  }
}

void unite(int num, Adj_t* u_adjs){
  #pragma HLS INTERFACE s_axilite	port=num	bundle=control
  #pragma HLS INTERFACE m_axi port=u_adjs bundle=gmem0 offset=slave
  #pragma HLS INTERFACE s_axilite port=u_adjs
  #pragma HLS INTERFACE s_axilite port=return
  Adj_t adj_out;
  adj_out.Fill(-1);
  Adj_t count;
  count.Fill(0);
  
  Adj_t adj0=u_adjs[0];
  Adj_t adj1=u_adjs[1];
  Adj_t adj2=u_adjs[2];
  //#pragma HLS DATAFLOW
  Stream<int> pipe[4];
  
  HLSLIB_DATAFLOW_INIT();
  //HLSLIB_DATAFLOW_FUNCTION(firstRead,u_adjs[0],pipe[0]);
  HLSLIB_DATAFLOW_FUNCTION(readItem0,adj0,count,pipe[0]);
  /*pipelining: for (int a=1;a<3;a++){
    #pragma HLS UNROLL
    HLSLIB_DATAFLOW_FUNCTION(readItem,u_adjs[a],count,pipe[a-1],pipe[a]);
  }*/
  HLSLIB_DATAFLOW_FUNCTION(readItem,adj1,count,pipe[0],pipe[1]);
  HLSLIB_DATAFLOW_FUNCTION(readItem,adj2,count,pipe[1],pipe[2]);
  HLSLIB_DATAFLOW_FUNCTION(writeResult,count,adj_out,pipe[2]);
  HLSLIB_DATAFLOW_FINALIZE();
  writeResultf(count,adj_out);
 
  printf("\n------Adjs------: \n");
  for (int j=0;j<num;j++){
  for (int i=0;i<MAX_ADJ;i++){
    if (u_adjs[j].Get(i)!=-1){
      printf("%d ",u_adjs[j].Get(i));
    }
  }
  printf("\n");
  }
  printf("\n------Union Adj------: \n");
  for (int i=0;i<MAX_ADJ;i++){
    if (adj_out.Get(i)!=-1){
      printf("%d ",adj_out.Get(i));
    }
  }

  printf("\n------Done------\n");
}

int main() {
  Adj_t adj1; //[Empty:-1,-1,-1...,-1]
  Adj_t adj2; //[0]

  Adj_t adj3; //[0,1,5]
  Adj_t adj4; //[0,1,2,...,31]

  Adj_t adj5; //[0,1,2]
  Adj_t adj6; //[0,2,3]

  Adj_t adj7; //[0,1,2,3]
  Adj_t adj8; //[3,1,0,2]

  Adj_t adj9; //0,1,2,...31
  Adj_t adj10; //30,31,32

  adj1.Fill(-1);
  
  adj2.Fill(-1);adj2.Set(0,0);
  
  adj3.Fill(-1);adj3.Set(0,0);adj3.Set(1,1);adj3.Set(2,5);

  for (int i=0;i<MAX_ADJ;i++) adj4.Set(i,i);
  
  adj5.Fill(-1);
  for (int i=0;i<3;i++) adj5.Set(i,i);

  adj6.Fill(-1);
  for (int i=0;i<3;i++) adj6.Set(i,i+1); adj6.Set(0,0);
 
  adj7.Fill(-1);
  for (int i=0;i<4;i++) adj7.Set(i,i);
 
  adj8.Fill(-1); adj8.Set(0,3); adj8.Set(1,1); adj8.Set(2,0); adj8.Set(3,2);
 
  adj9.Fill(-1);
  for (int i=0;i<MAX_ADJ;i++) adj9.Set(i,i);
  
  adj10.Fill(-1); adj10.Set(0,30); adj10.Set(1,31); adj10.Set(2,32);

  Adj_t adjs[3];
  adjs[0]=adj5;
  adjs[1]=adj6;
  adjs[2]=adj1;

  unite(3,adjs);
  return 0;
}
