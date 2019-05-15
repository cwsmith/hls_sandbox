# hls_sandbox
Testing pipelined graph operations supporting mesh adaptation on Xilinx Vivado HLS
## environment set-up on HLS virtual machine
Before building in any sub-directories, copy the hls directory into the subdirectories:
```
cd hls_sandbox
cp -r hls customized_union
cp -r hls g_rg_transit
cp -r hls intersect_stream
cp -r hls invert
cp -r hls invert_stream
cp -r hls unite_stream
```
## customized_union
A customized function to unite multiple adjacency arrays (Adj_t)
### build

```
make
```

### run

```
./main
```
## g_rg_transit
A pipelined function for graph(irregular: upward adjacency)-rgraph(regular: downward adjacency) transit. Both graph and rgraph are stored as array of adjacency arrays (Adj_t)
### build

```
make
```

### run

```
./main
```
## intersect_stream
A pipelined function to get intersection of two adjacency arrays (Adj_t)
### build

```
make
```

### run

```
./main
```
## invert
A function(not pipelined) to test the invert function (takes a regular graph PartoChld as input and outputs a graph ChldToPar)
### build

```
make
```

### run

```
./main
```
## invert_stream
A pipelined invert function (takes a regular graph PartoChld as input and outputs a graph ChldToPar)
### build

```
make
```

### run

```
./main
```
## unite_stream
A pipelined function to unite two adjacency arrays (Adj_t)
### build

```
make
```

### run

```
./main
```
