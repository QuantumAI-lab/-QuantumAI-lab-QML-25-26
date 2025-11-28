#!/bin/bash

# Name of the virtual environment
ENV_NAME="qiskit_env"

echo "Checking for Python 3..."
if ! command -v python3 &> /dev/null
then
    echo "Python 3 could not be found. Please install Python 3."
    exit 1
fi

echo "Creating virtual environment: $ENV_NAME"
python3 -m venv $ENV_NAME

echo "Activating virtual environment..."
source $ENV_NAME/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing required libraries..."
# Core Qiskit and Quantum libraries
pip install qiskit qiskit-aer qiskit-ibm-runtime

# Data Science and Visualization
pip install numpy matplotlib seaborn pylatexenc

# Jupyter Notebook environment
pip install jupyter notebook

echo "----------------------------------------------------------------"
echo "Setup complete!"
echo "To activate the environment, run the following command:"
echo "source $ENV_NAME/bin/activate"
echo "----------------------------------------------------------------"
