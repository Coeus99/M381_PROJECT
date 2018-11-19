#!/bin/bash

#different n's (fib(1) through fib(50))
N=50

#samples of each n (fib(1) will be ran 40 times)
SAMPLES=40

for i in `seq 1 $N`;
do
    for j in `seq 1 $SAMPLES`;
    do
        ./recursive/fib $i >> ./recursive/data.csv
        ./dynamic/fib $i >> ./dynamic/data.csv
        ./iterative/fib $i >> ./iterative/data.csv
    done
done
