#include <stdlib.h>
#include <stdio.h>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;
#define MAX_ADJ 32
using Adj_t=hlslib::DataPack<int,MAX_ADJ>;

void readItem0(int num,Adj_t* adjs, Adj_t &cnt,  Stream<int> &i_out){
  readAdj0: for(int i=0; i<MAX_ADJ*num; i++) {
    #pragma HLS PIPELINE
    int item=adjs[i/MAX_ADJ].Get(i%MAX_ADJ);
    i_out.Push(item);
  }
}

void readItem(int num, Adj_t &cnt, Stream<int> &i_in){
  readAdj1: for(int i=0; i<MAX_ADJ*num; i++) {
    #pragma HLS PIPELINE
    int item=i_in.Pop();
    if (item!=-1){
      cnt.Set(item, (cnt.Get(item))+1);
    }
    //i_out.Push(item);
  }
}

void writeResult(Adj_t cnt, Adj_t& out){
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
  using Adj_t=hlslib::DataPack<int,MAX_ADJ>;
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
  //HLSLIB_DATAFLOW_FUNCTION(readItem0,adj0,count,pipe[0]);
  /*pipelining: for (int a=1;a<3;a++){
    #pragma HLS UNROLL
    HLSLIB_DATAFLOW_FUNCTION(readItem,u_adjs[a],count,pipe[a-1],pipe[a]);
  }*/
  HLSLIB_DATAFLOW_FUNCTION(readItem0,num,u_adjs,count,pipe[0]);
  HLSLIB_DATAFLOW_FUNCTION(readItem,num,count,pipe[0]);
  HLSLIB_DATAFLOW_FINALIZE();
  writeResult(count,adj_out);
 
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

  Adj_t adj3; //[2,3,4]
  Adj_t adj4; //[0,1,2,...,31]

  Adj_t adj5; //[0,1,2]
  Adj_t adj6; //[0,2,3]

  Adj_t adj7; //[0,1,2,3]
  Adj_t adj8; //[3,1,0,2]

  Adj_t adj9; //0,1,2,...31
  Adj_t adj10; //30,31,32

  adj1.Fill(-1);
  
  adj2.Fill(-1);adj2.Set(0,0);
  
  adj3.Fill(-1);adj3.Set(0,2);adj3.Set(1,3);adj3.Set(2,4);

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
  adjs[2]=adj3;

  unite(3,adjs);
  return 0;
}
