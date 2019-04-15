#include <stdlib.h>
#include <stdio.h>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;
#define MAX_ADJ 32
using Adj_t=hlslib::DataPack<int,MAX_ADJ>;

void readItem(Adj_t adj1, Stream<int> &i_out)
{
  readAdj1: for(int i=0; i<MAX_ADJ; i++) {
    #pragma HLS PIPELINE
    int item=adj1.Get(i);
    i_out.Push(item);
  }
}

void readCompare(Adj_t adj2, Stream<int> &i_in, Stream<int> &i_out){
  readAdj2: for (int i=0;i<MAX_ADJ;i++){
    #pragma HLS PIPELINE
    const int item=i_in.Pop();
    int flag=0;  
    Compare: for (int j=0;j<MAX_ADJ;j++){
      if (item==adj2.Get(j)){
        flag=1;
        i_out.Push(item);
        break;
      }
    }
    if (flag==0) {i_out.Push(-1);}
  }
}

void writeResult(Adj_t &out, Stream<int> &i_in){
  WriteResult: for (int i=0;i<MAX_ADJ;i++){
    #pragma HLS PIPELINE
    const int item=i_in.Pop();
    if (item!=-1) {out.Set(i,item);}
  }
}

void check_sol(Adj_t adj1, Adj_t adj2, Adj_t adj_out){
  Adj_t adj_ref;
  adj_ref.Fill(-1);
  for (int i=0; i<MAX_ADJ; i++){
    for (int j=0; j<MAX_ADJ;j++){
      if (adj1.Get(i)==adj2.Get(j) and adj1.Get(i)!=-1)
         adj_ref.Set(i,adj1.Get(i));
    }
  }
  printf("\nReference Adj: ");
  for (int i=0;i<MAX_ADJ;i++){
    if (adj_ref.Get(i)!=-1){
      printf("%d ",adj_ref.Get(i));
    }
  }
}
void intersect(Adj_t adj1, Adj_t adj2){
  #pragma HLS INTERFACE s_axilite	port=adj1	bundle=control
  #pragma HLS INTERFACE s_axilite	port=adj2	bundle=control
  Stream<int> items1("1_in_2_out");
  Stream<int> items2("2_in_3_out");
  Adj_t adj_out;
  adj_out.Fill(-1);

  HLSLIB_DATAFLOW_INIT();
  HLSLIB_DATAFLOW_FUNCTION(readItem,adj1,items1);
  HLSLIB_DATAFLOW_FUNCTION(readCompare,adj2,items1,items2);
  HLSLIB_DATAFLOW_FUNCTION(writeResult,adj_out,items2);
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
  printf("\nIntersect Adj: ");
  for (int i=0;i<MAX_ADJ;i++){
    if (adj_out.Get(i)!=-1){
      printf("%d ",adj_out.Get(i));
    }
  }
  check_sol(adj1,adj2,adj_out);
  printf("\n------Done------\n");
}

int main() {
  Adj_t adj1; //[Empty:-1,-1,-1...,-1]
  Adj_t adj2; //[0]

  Adj_t adj3; //[0,1,5]
  Adj_t adj4; //[0,1,2,...,31]

  Adj_t adj5; //[0,1,2,3,4]
  Adj_t adj6; //[0,1,2]

  Adj_t adj7; //[0,1,2,3]
  Adj_t adj8; //[3,1,0,2]

  adj1.Fill(-1);
  
  adj2.Fill(-1);adj2.Set(0,0);
  
  adj3.Fill(-1);adj3.Set(0,0);adj3.Set(1,1);adj3.Set(2,5);

  for (int i=0;i<MAX_ADJ;i++) adj4.Set(i,i);
  
  adj5.Fill(-1);
  for (int i=0;i<5;i++) adj5.Set(i,i);

  adj6.Fill(-1);
  for (int i=0;i<3;i++) adj6.Set(i,i);
 
  adj7.Fill(-1);
  for (int i=0;i<4;i++) adj7.Set(i,i);
 
  adj8.Fill(-1); adj8.Set(0,3); adj8.Set(1,1); adj8.Set(2,0); adj8.Set(3,2);

  intersect(adj1,adj2);
  intersect(adj3,adj4);
  intersect(adj5,adj6);
  intersect(adj7,adj8);
  return 0;
}
