#include <stdlib.h>
#include <stdio.h>
#include "hlslib/Stream.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;

#define MAX_ADJ 32

void ReadMem(int const *in, Stream<int> &s, const int N){
  read: for (int i=0; i<N; ++i){
    #pragma HLS PIPELINE
    s.Push(in[i]);
  }
}

void invert_edges(Stream<int> & st_in, Stream<int> &st_out,
    const int N, const int chldPerPar, int* chldToPar){
  invert_edges: for (int i=0; i<N; i++ ){
    #pragma HLS PIPELINE
    const int child=st_in.Pop();
    const int parent = i/chldPerPar;
    chldToPar[child*MAX_ADJ]=parent;
    st_out.Push(child);
  }
}

void shiftChildren(Stream<int> & st_in,
  const int N, int* chldToPar) {
  for (int i=0; i<N; i++ ){
    const int child=st_in.Pop();
    shiftChildren: for(int j=MAX_ADJ-1; j>0; --j) {
      #pragma HLS UNROLL
      chldToPar[child*MAX_ADJ+j] = chldToPar[child*MAX_ADJ+(j-1)];
    }
  }
}

void invert(int numPar, int chldPerPar, int numChld,
    int* parToChld, int* chldToPar) {
  #pragma HLS INTERFACE m_axi     port=parToChld  bundle=gmem    offset=slave
  #pragma HLS INTERFACE m_axi     port=chldToPar  bundle=gmem1   offset=slave
  #pragma HLS INTERFACE s_axilite port=numPar     bundle=control
  #pragma HLS INTERFACE s_axilite port=chldPerPar bundle=control
  #pragma HLS INTERFACE s_axilite port=numChld    bundle=control

  Stream<int> childStrm("children");
  Stream<int> childShiftStrm("childShift");
  const int N = numPar*chldPerPar;
  HLSLIB_DATAFLOW_INIT();
  //ParToChld As the 1st input stream
  HLSLIB_DATAFLOW_FUNCTION(ReadMem,parToChld,childStrm,N);
  HLSLIB_DATAFLOW_FUNCTION(invert_edges,childStrm,childShiftStrm,N,
      chldPerPar,chldToPar);
  HLSLIB_DATAFLOW_FUNCTION(shiftChildren,childShiftStrm,N,chldToPar);
  HLSLIB_DATAFLOW_FINALIZE();
}

void checkSoln(int* chldToPar, int numChld, int numPar) {
  int* cToP = new int[numChld*numPar];
  cToP[0*numChld+0] = 1;
  cToP[0*numChld+1] = 1;
  cToP[0*numChld+2] = 1;
  cToP[1*numChld+0] = 1;
  cToP[2*numChld+1] = 1;
  cToP[2*numChld+2] = 1;

  //print results
  for(int child=0; child<numChld; child++) {
    for(int j=0; j<MAX_ADJ; j++) {
      const int parent = chldToPar[child*MAX_ADJ+j];
      if( parent != -1 && ! cToP[child*numChld+parent] ) {
        fprintf(stderr, "graph edge child %d - parent %d"
            "does not exist in reference solution\n",
            child, parent);
        exit(EXIT_FAILURE);
      }
    }
  }
  printf("solution matches\n");
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
  for(int i=0; i<numChld*MAX_ADJ; i++)
    chldToPar[i] = -1;

  invert(numPar, chldPerPar, numChld, parToChld, chldToPar);
  checkSoln(chldToPar, numChld, numPar);

  delete [] chldToPar;
  delete [] chldDeg;
  return 0;
}
