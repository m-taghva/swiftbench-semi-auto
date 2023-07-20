#!/bin/bash

./swiftconfg.sh

docker run --rm -v $PWD/swift-bench.conf:/project/swift-bench.conf -v /etc/localtime:/etc/localtime:ro swift-bench:latest swift-bench swift-bench.conf
