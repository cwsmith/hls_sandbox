#include <stdlib.h>
#include <stdio.h>
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
  Stream<int> delay("2_in_1_out");
  Adj_t adj_out;
  adj_out.Fill(-1);

  HLSLIB_DATAFLOW_INIT();
  HLSLIB_DATAFLOW_FUNCTION(readItem,adj1,adj_out,items1,delay);
  HLSLIB_DATAFLOW_FUNCTION(readCompare,adj2,adj1,adj_out,items1,delay);
  HLSLIB_DATAFLOW_FINALIZE();
 
  delay.Pop();
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

int main() {
  Adj_t adj1; //[Empty:-1,-1,-1...,-1]
  Adj_t adj2; //[0]

  Adj_t adj3; //[0,1,5]
  Adj_t adj4; //[0,1,2,...,31]

  Adj_t adj5; //[0,1,2,3,4]
  Adj_t adj6; //[0,1,2]

  Adj_t adj7; //[0,1,2,3]
  Adj_t adj8; //[3,1,0,2]

  Adj_t adj9; //0,1,2,...31
  Adj_t adj10; //30,31,32

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
 
  adj9.Fill(-1);
  for (int i=0;i<MAX_ADJ;i++) adj9.Set(i,i);
  
  adj10.Fill(-1); adj10.Set(0,30); adj10.Set(1,31); adj10.Set(2,32);

  unite(adj1,adj2);
  unite(adj3,adj4);
  unite(adj5,adj6);
  unite(adj7,adj8);
  unite(adj9,adj10);
  return 0;
}
