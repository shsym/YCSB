#!/bin/bash
./bin/ycsb load redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -P param.dat -threads 1
sleep 5
./bin/ycsb run redis -s -P workloads/workloada -p "redis.host=127.0.0.1" -p "redis.port=6379" -P param.dat -threads 1
sleep 5
./bin/ycsb run redis -s -P workloads/workloadb -p "redis.host=127.0.0.1" -p "redis.port=6379" -P param.dat -threads 1
sleep 5
./bin/ycsb run redis -s -P workloads/workloadc -p "redis.host=127.0.0.1" -p "redis.port=6379" -P param.dat -threads 1
sleep 5
./bin/ycsb run redis -s -P workloads/workloadf -p "redis.host=127.0.0.1" -p "redis.port=6379" -P param.dat -threads 1
sleep 5
./bin/ycsb run redis -s -P workloads/workloadd -p "redis.host=127.0.0.1" -p "redis.port=6379" -P param.dat -threads 1

