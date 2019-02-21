#include <stdlib.h>
#include <stdio.h>

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

  inv: for(int i=0; i<numPar*chldPerPar; i++) {
     #pragma HLS PIPELINE
     const int parent = i / chldPerPar;
     const int child = parToChld[i];
     const int idx = chldDeg[child];
     chldToPar[child*MAX_ADJ+idx] = parent;
     chldDeg[child]++;
  }
}

int main() {
  int numPar = 3;
  int chldPerPar = 2;
  int numChld = 3;
  int parToChld[6] = {/*A*/1,0,/*B*/0,2,/*C*/2,0};
  int* chldToPar = new int[numChld*MAX_ADJ];
  int* chldDeg = new int[numChld];
  invert(numPar, chldPerPar, numChld, parToChld, chldToPar, chldDeg);
  for(int i=0; i<numChld; i++) {
    printf("chld %d par ", i);
    for(int j=0; j<chldDeg[i]; j++) {
      printf(" %d ", chldToPar[i*MAX_ADJ+j]);
    }
    printf("\n");
  }
  delete [] chldToPar;
  delete [] chldDeg;
  return 0;
}
