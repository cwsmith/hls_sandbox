#include <stdlib.h>
#include <stdio.h>
#include "hlslib/Stream.h"
using hlslib::Stream;

#define MAX_ADJ 32

void invert(int numPar, int chldPerPar, int numChld,
            int* parToChld, int* chldToPar, int* chldDeg)
{
  #pragma HLS INTERFACE m_axi     port=parToChld  bundle=gmem    offset=slave
  #pragma HLS INTERFACE m_axi     port=chldToPar  bundle=gmem1   offset=slave
  #pragma HLS INTERFACE m_axi     port=chldDeg    bundle=gmem2   offset=slave
  #pragma HLS INTERFACE s_axilite port=numPar     bundle=control
  #pragma HLS INTERFACE s_axilite port=chldPerPar bundle=control
  #pragma HLS INTERFACE s_axilite port=numChld    bundle=control

  //no idea how to size these
//  Stream<int> deg(MAX_ADJ);
  Stream<int> edge(MAX_ADJ);

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
     chldToPar[child*MAX_ADJ+idx] = parent;
  }

  incdegree: for(int i=0; i<numPar*chldPerPar; i++) {
     #pragma HLS PIPELINE
     const int idx = deg.Pop();
     const int child = deg.Pop();
     chldDeg[child] = idx+1;
     //printf("i %d c %d idx %d deg %d\n", i, child, idx, chldDeg[child]);
  }
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
  invert(numPar, chldPerPar, numChld, parToChld, chldToPar, chldDeg);
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
