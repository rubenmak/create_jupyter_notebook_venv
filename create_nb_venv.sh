#!/bin/bash
mkdir venv
cd venv
python3 -m venv $1
source $1/bin/activate
pip install ipykernel
ipython kernel install --user --name=$1
cd ..
echo "venv/" >> .gitignore
