#!/bin/bash

SAMPLES=40
N=20

for i in `seq 1 $SAMPLES`;
do
    ./recursive/fib $i >> ./recursive/many_n.csv
    ./dynamic/fib $i >> ./dynamic/many_n.csv
    ./iterative/fib $i >> ./iterative/many_n.csv
done
