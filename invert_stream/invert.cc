#include <stdlib.h>
#include <stdio.h>
#include <cassert>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;

#define MAX_ADJ 32

using Adj_t = hlslib::DataPack<int, MAX_ADJ>;

void readChildren(int const *in, Stream<int> &c_out, Stream<int> &c2_out, const int N){
  readChildren: for (int i=0; i<N; ++i){
    #pragma HLS PIPELINE
    const int chld = in[i];
    c_out.Push(chld);
    c2_out.Push(chld);
  }
}

void readAdj(Adj_t const *chldToPar, Stream<int> &s_in, Stream<Adj_t>& s_out, const int N){
  readAdj: for (int i=0; i<N; ++i){
    #pragma HLS PIPELINE
    const int child = s_in.Pop();
    s_out.Push(chldToPar[child]);
  }
}

void invert_edges(Stream<Adj_t> & adj_in, Stream<Adj_t> &adj_out,
    const int N, const int chldPerPar){
  invert_edges: for (int i=0; i<N; i++ ){
    #pragma HLS PIPELINE
    Adj_t adj = adj_in.Pop();
    const int parent = i/chldPerPar;
    adj[0] = parent;
    adj_out.Push(adj);
  }
}

void shiftChildren(Stream<int> & chld_in, Stream<Adj_t> & adj_in,
  const int N, Adj_t* chldToPar) {
  for (int i=0; i<N; i++ ){
    const int child = chld_in.Pop();
    const Adj_t adj = adj_in.Pop();
    shiftChildren: for(int j=MAX_ADJ-1; j>0; --j) {
      #pragma HLS UNROLL
      chldToPar[child][j] = adj[j-1];
    }
  }
}

void invert(int numPar, int chldPerPar, int numChld,
    int* parToChld, Adj_t* chldToPar) {
  #pragma HLS INTERFACE m_axi     port=parToChld  bundle=gmem    offset=slave
  #pragma HLS INTERFACE m_axi     port=chldToPar  bundle=gmem1   offset=slave
  #pragma HLS INTERFACE s_axilite port=numPar     bundle=control
  #pragma HLS INTERFACE s_axilite port=chldPerPar bundle=control
  #pragma HLS INTERFACE s_axilite port=numChld    bundle=control

  Stream<int> chld_s("children");
  Stream<int> chld2_s("children2");
  Stream<Adj_t> chldAdj_s("childAdj");
  Stream<Adj_t> chldAdj2_s("childAdj");
  Stream<int> adjShift_s("adjShift");
  const int N = numPar*chldPerPar;
  HLSLIB_DATAFLOW_INIT();
  //ParToChld As the 1st input stream
  HLSLIB_DATAFLOW_FUNCTION(readChildren,parToChld,chld_s,chld2_s,N);
  HLSLIB_DATAFLOW_FUNCTION(readAdj,chldToPar,chld_s,chldAdj_s,N);
  HLSLIB_DATAFLOW_FUNCTION(invert_edges,chldAdj_s,chldAdj2_s,N,
      chldPerPar);
  HLSLIB_DATAFLOW_FUNCTION(shiftChildren,chld2_s,chldAdj2_s,N,chldToPar);
  HLSLIB_DATAFLOW_FINALIZE();
}

void checkSoln(Adj_t* chldToPar, int numChld, int numPar) {
  int* cToP = new int[numChld*numPar];
  /*0:A,B,C*/
  cToP[0*numChld+0] = 1;
  cToP[0*numChld+1] = 1;
  cToP[0*numChld+2] = 1;
  /*1:A*/
  cToP[1*numChld+0] = 1;
  /*2:B,C*/
  cToP[2*numChld+1] = 1;
  cToP[2*numChld+2] = 1;

  //print results
  for(int child=0; child<numChld; child++) {
    for(int j=0; j<MAX_ADJ; j++) {
      printf("i %d j %d ", child, j);
      const int parent = chldToPar[child][j];
      if( parent != -1 ) {
        assert(parent>=0 && parent<numPar);
        const int refPar = cToP[child*numChld+parent];
        printf("child %d parent %d refPar %d\n", child, parent, refPar);
        if( ! refPar ) {
          fprintf(stderr, "graph edge child %d - parent %d"
              "does not exist in reference solution\n",
              child, parent);
          exit(EXIT_FAILURE);
        }
      } else {
        printf("\n");
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
  Adj_t* chldToPar = new Adj_t[numChld];
  for(int i=0; i<numChld; i++)
    for(int j=0; j<MAX_ADJ; j++)
      chldToPar[i][j] = -1;

  invert(numPar, chldPerPar, numChld, parToChld, chldToPar);
  checkSoln(chldToPar, numChld, numPar);

  delete [] chldToPar;
  return 0;
}
