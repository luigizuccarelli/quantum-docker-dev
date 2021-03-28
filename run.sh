#!/bin/bash

docker run -it --privileged -v /home/lzuccarelli/Projects/qc-docker-dev:/qiskit qiskit-local:dev python3.6 convert_to_json.py grover-011.qasm grover-011.json grover-011

docker run -it --privileged -v /home/lzuccarelli/Projects/qc-docker-dev:/cpp-simulator cpp-simulator:dev ../out/qiskit_simulator grover-011.json

docker rm $(docker ps -a | grep Exited | awk '{print $1}')




