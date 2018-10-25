#!/bin/bash

SAMPLES=100
N=20

for i in `seq 1 $SAMPLES`;
do
    ./recursive/fib $N >> ./recursive/single_n.csv
    ./dynamic/fib $N >> ./dynamic/single_n.csv
    ./iterative/fib $N >> ./iterative/single_n.csv
done
