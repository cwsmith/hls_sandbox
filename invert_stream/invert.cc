#include <stdlib.h>
#include <stdio.h>
#include <cassert>
#include "hlslib/Stream.h"
#include "hlslib/DataPack.h"
#include "hlslib/Simulation.h"
using hlslib::Stream;

#define MAX_ADJ 32

using Adj_t = hlslib::DataPack<int, MAX_ADJ>;

void readChildren(int const *in, Stream<int> &c_out,  const int N){
  readChildren: for (int i=0; i<N; ++i){
    #pragma HLS PIPELINE
    const int chld = in[i];
    c_out.Push(chld);

  }
}

void readAdj(Adj_t *chldToPar, const int chldPerPar, Stream<int> &c_in,
    Stream<Adj_t>& s_out, Stream<int> &c_out, const int N){
  readAdj: for (int i=0; i<N; ++i){
    #pragma HLS PIPELINE
    const int child = c_in.Pop();
   readAdj_shift: for(int j=MAX_ADJ-1; j>0; --j) {
      chldToPar[child].Set(j, chldToPar[child].Get(j-1));
    }
    const int parent = i/chldPerPar;
    chldToPar[child].Set(0,parent);
  }
}

void checkSoln(Adj_t* chldToPar, int* cToP, int numChld, int numPar) {
  //print results
  for(int child=0; child<numChld; child++) {
    for(int j=0; j<MAX_ADJ; j++) {
      const int parent = chldToPar[child].Get(j);
      if( parent != -1 ) {
        assert(parent>=0 && parent<numPar);
        printf("child %d parent %d\n", child, parent);
        const int refPar = cToP[child*numChld+parent];
        if( ! refPar ) {
          fprintf(stderr, "graph edge child %d - parent %d"
              "does not exist in reference solution\n",
              child, parent);
          exit(EXIT_FAILURE);
        }
      }
    }
  }
}


void invert(int numPar, int chldPerPar, int numChld,
    int* parToChld, int*cToP) {
  #pragma HLS INTERFACE m_axi     port=parToChld  bundle=gmem    offset=slave
  #pragma HLS INTERFACE s_axilite port=numPar     bundle=control
  #pragma HLS INTERFACE m_axi     port=cToP  	  bundle=gmem    offset=slave
  #pragma HLS INTERFACE s_axilite port=chldPerPar bundle=control
  #pragma HLS INTERFACE s_axilite port=numChld    bundle=control

  Stream<int> chld_s("children");

  Stream<int> chld3_s("children3");

  Stream<Adj_t> chldAdj_s("childAdj");
  Stream<Adj_t> adjShift_s("adjShift");
  const int N = numPar*chldPerPar;

  Adj_t chldToPar[1024];
  Store_output: for(int i=0; i<1024; i++){
    #pragma HLS PIPELINE
    chldToPar[i].Fill(-1);
   }

  HLSLIB_DATAFLOW_INIT();
  HLSLIB_DATAFLOW_FUNCTION(readChildren,parToChld,chld_s,N);
  HLSLIB_DATAFLOW_FUNCTION(readAdj,chldToPar,chldPerPar,chld_s,chldAdj_s,chld3_s,N);
  HLSLIB_DATAFLOW_FINALIZE();

  checkSoln(chldToPar, cToP, numChld, numPar);
}
void test1() {
  int numPar = 3;
  int chldPerPar = 2;
  int numChld = 3;
  int parToChld[6] = {/*A*/1,0,/*B*/0,2,/*C*/2,0};

  int* cToP=new int[numChld*numPar];
  for(int i=0; i<numChld*numPar; i++)
    cToP[i] = 0;
  /*0:A,B,C*/
  cToP[0*numChld+0] = 1;
  cToP[0*numChld+1] = 1;
  cToP[0*numChld+2] = 1;
  /*1:A*/
  cToP[1*numChld+0] = 1;
  /*2:B,C*/
  cToP[2*numChld+1] = 1;
  cToP[2*numChld+2] = 1;

  invert(numPar, chldPerPar, numChld, parToChld,cToP);
  delete [] cToP;
  printf("done %s\n",__func__);
}

void test2() {
  const int numPar = 5;
  const int chldPerPar = 1;
  const int numChld = 1;
  int parToChld[numPar] = {/*A*/0,/*B*/0,/*C*/0,/*D*/0,/*E*/0};

  int* cToP = new int[numChld*numPar];
  for(int i=0; i<numChld*numPar; i++)
    cToP[i] = 0;

  //0:A
  cToP[0*numChld+0] = 1;
  //0:B
  cToP[1*numChld+0] = 1;
  //0:C
  cToP[2*numChld+0] = 1;
  //0:D
  cToP[3*numChld+0] = 1;
  //0:E
  cToP[4*numChld+0] = 1;

  invert(numPar, chldPerPar, numChld, parToChld, cToP);
  delete [] cToP;
  printf("done %s\n",__func__);
}

int main() {
  test1();
  test2();
  return 0;
}
