#!/usr/bin/env bash

first=2
last=8
incr=2

name=banana

echo 'May I have @@@num bananas?' > ${name}.tpl

for job in $(seq $first $incr $last); do
#for job in "A B"; do
    sed "s/@@@num/$job/" <  ${name}.tpl > ${name}_${job}.txt
    cat ${name}_${job}.txt
done
