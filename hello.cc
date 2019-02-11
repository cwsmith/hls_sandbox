#include <stdlib.h>
#include <stdio.h>

#include "ints.h"
#include "rgraph.h"

void hello(int& rg_nverts, int& rg_degree,
    int& rg_n, int* rg_i,
    int& g_nverts, int& g_max_deg,
    void* g_off,
    int& g_adj_n, int* g_adj_i)
{
  #pragma HLS INTERFACE m_axi port=rg_nverts bundle=gmem0 offset=slave
  #pragma HLS INTERFACE m_axi port=rg_degree bundle=gmem1 offset=slave
  #pragma HLS INTERFACE m_axi port=rg_n bundle=gmem2 offset=slave
  #pragma HLS INTERFACE m_axi port=rg_i bundle=gmem3 offset=slave
  #pragma HLS INTERFACE m_axi port=g_nverts bundle=gmem4 offset=slave
  #pragma HLS INTERFACE m_axi port=g_max_deg bundle=gmem5 offset=slave
  #pragma HLS INTERFACE m_axi port=g_off bundle=gmem6 offset=slave
  #pragma HLS INTERFACE m_axi port=g_adj_n bundle=gmem8 offset=slave
  #pragma HLS INTERFACE m_axi port=g_adj_i bundle=gmem9 offset=slave
  #pragma HLS INTERFACE s_axilite port=rg_nverts
  #pragma HLS INTERFACE s_axilite port=rg_degree
  #pragma HLS INTERFACE s_axilite port=rg_n
  #pragma HLS INTERFACE s_axilite port=rg_i
  #pragma HLS INTERFACE s_axilite port=g_nverts
  #pragma HLS INTERFACE s_axilite port=g_max_deg
  #pragma HLS INTERFACE s_axilite port=g_off
  #pragma HLS INTERFACE s_axilite port=g_adj_n
  #pragma HLS INTERFACE s_axilite port=g_adj_i

#include "ints.h"
  ints iarr;
  iarr.n = 5;
  iarr.i = new int[5];
  ints* g = (ints*) g_off;
  printf("%s rg_nverts %d iarr.n %d g->n %d g->i[1] %d\n",
    __func__, rg_nverts, iarr.n, g->n, g->i[1]);
  delete [] iarr.i;

#include "rgraph.h"
  //Create an ints struct for adj in rgraph
  ints rg_adj;
  rg_adj.n=rg_n;
  rg_adj.i = rg_i;
  //Create rgraph struct with 2 int(s) ane one ints struct from arguments
  rgraph rg;
  rg.nverts=rg_nverts;
  rg.degree=rg_degree;
  rg.adj=rg_adj;
  printf("%s Test rgraph: rg_nverts %d rg_degree %d rg_adj[1] %d\n",
    __func__, rg.nverts, rg.degree, rg.adj.i[1]);
  
}

int main() {
  int rg_nverts = 2;
  int rg_degree = 4;
  int rg_n = 8;
  int* rg_i = new int[8];
  rg_i[1]=36;
  int g_nverts = 2;
  int g_max_deg = 6;
  int g_adj_n = 12;
  int* g_adj_i = new int[12];
  ints g_off;
  g_off.n = 12;
  g_off.i = new int[12];
  g_off.i[0] = 42;
  g_off.i[1] = 43;
  hello(rg_nverts, rg_degree, rg_n, rg_i,
    g_nverts, g_max_deg,
    &g_off,
    g_adj_n, g_adj_i);
  delete [] rg_i;
  delete [] g_off.i;
  delete [] g_adj_i;
  return 0;
}
