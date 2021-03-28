import qiskit
import json
import os
import sys

qp = qiskit.QuantumProgram()
qp.load_qasm_file(sys.argv[1])
my_qobj = qp.compile(sys.argv[3], 'local_qiskit_simulator')
with open(sys.argv[2], 'w') as outfile:
    json.dump(my_qobj, outfile)
