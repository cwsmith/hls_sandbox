#include <stdlib.h>
#include <stdio.h>
#include "hlslib/Stream.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;

#define MAX_ADJ 32

void ReadMem(int const *in, Stream<int> &s){
  for (int i=0; i<6; ++i){
   #pragma HLS PIPELINE II=1
   s.Push(in[i]);
 }
}

void get_edges(Stream<int> &st_in, Stream<int> &st_out, int numPar, int chldPerPar){
 //int center = st_in.Pop();
 for (int i=0; i<numPar*chldPerPar; i++){
   #pragma HLS PIPELINE II=1
   //Read(POp)
   int child=st_in.Pop();
   //Compute
   int parent = i/chldPerPar;
   //Write(Push)
   st_out.Push(parent);
   st_out.Push(child);

  }
}

void invert_edges(Stream<int> & st_in, Stream<int> &st_out, int numPar, int chldPerPar, int* chldDeg, int* chldToPar){
 #pragma HLS INTERFACE m_axi     port=chldToPar  bundle=gmem1   offset=slave
 #pragma HLS INTERFACE m_axi     port=chldDeg    bundle=gmem2   offset=slave
 for (int i=0; i<numPar*chldPerPar; i++ ){
   #pragma HLS PIPELINE II=1
   //Read twice for a par-chld pair
   int parent=st_in.Pop();
   int child=st_in.Pop();
   //Compute 1: Populate chldToPar array
   chldToPar[child*MAX_ADJ+chldDeg[child]]=parent;
   //Compute 2: Update chldDeg
   chldDeg[child]++;
   //Write (1 for finished, totally irrelevant to compute steps)
   st_out.Push(1);
 }
}
void invert(Stream<int> &pipe0, Stream<int> &pipe1, Stream<int> &pipe2,
             int numPar, int chldPerPar, int numChld,
             int* parToChld, int* chldToPar, int* chldDeg)
{
      #pragma HLS INTERFACE m_axi     port=parToChld  bundle=gmem    offset=slave
      #pragma HLS INTERFACE m_axi     port=chldToPar  bundle=gmem1   offset=slave
      #pragma HLS INTERFACE m_axi     port=chldDeg    bundle=gmem2   offset=slave
      #pragma HLS INTERFACE s_axilite port=numPar     bundle=control
      #pragma HLS INTERFACE s_axilite port=chldPerPar bundle=control
      #pragma HLS INTERFACE s_axilite port=numChld    bundle=control
    /*
     //no idea how to size these
      Stream<int> deg;
     Stream<int> edge;
  
  edge: for(int i=0; i<numPar*chldPerPar; i++) {
        #pragma HLS PIPELINE
        const int parent = i / chldPerPar;
        const int child = parToChld[i];
        edge.Push(parent);
        edge.Push(child);
     }
   
     insert: for(int i=0; i<numPar*chldPerPar; i++) {
        #pragma HLS PIPELINE
        const int parent = edge.Pop();
        const int child = edge.Pop();
        const int idx = chldDeg[child];
        deg.Push(idx);
        deg.Push(child);
        chldToPar[child*MAX_ADJ+idx] = parent;
    }
  
  incdegree: for(int i=0; i<numPar*chldPerPar; i++) {
        #pragma HLS PIPELINE
        const int idx = deg.Pop();
        const int child = deg.Pop();
        chldDeg[child] = idx+1;
     //printf("i %d c %d idx %d deg %d\n", i, child, idx, chldDeg[child]);
     }*/
  HLSLIB_DATAFLOW_INIT();
  //ParToChld As the 1st input stream
  HLSLIB_DATAFLOW_FUNCTION(ReadMem, parToChld, pipe0);
  
  //Start concurrent pipelines (x2?)
  //1st output stream: pairs of par and chld (size 12) push into pipe[1]
  get_edges(pipe0,pipe1,numPar,chldPerPar);
  //1st output -> 2nd input: pipe1, update Deg and ChldtoPar(final results),output nonsense into pipe2
  invert_edges(pipe1,pipe2,numPar,chldPerPar,chldDeg,chldToPar);
}




int main() {
  int numPar = 3;
  int chldPerPar = 2;
  int numChld = 3;
  int parToChld[6] = {/*A*/1,0,/*B*/0,2,/*C*/2,0};
  int* chldToPar = new int[numChld*MAX_ADJ];
  int* chldDeg = new int[numChld];
  for(int i=0; i<numChld; i++)
    chldDeg[i] = 0;


  Stream<int> pipe[3];
 
  invert(pipe[0],pipe[1],pipe[2],numPar, chldPerPar, numChld, parToChld, chldToPar, chldDeg);
  
  HLSLIB_DATAFLOW_INIT();

  //parToChld as the 1st input stream, 
  HLSLIB_DATAFLOW_FUNCTION(ReadMem, parToChld, pipe[0]);

  //Start concurrent pipelines (x2)
  //1st output stream: pairs of par and chld (size 12) push into pipe[1]
  get_edges(pipe[0], pipe[1], numPar, chldPerPar);
  //2nd input: pipe[1], update Deg and chldtToPar, output nonsense into pip2[2]
  invert_edges(pipe[1],pipe[2], numPar, chldPerPar,chldDeg,chldToPar);

  //print results
  for(int i=0; i<numChld; i++) {
    printf("chld %d deg %d par ", i, chldDeg[i]);
    for(int j=0; j<=chldDeg[i]; j++) {
      printf(" %d ", chldToPar[i*MAX_ADJ+j]);
    }
    printf("\n");
  }
  delete [] chldToPar;
  delete [] chldDeg;
  return 0;
}
