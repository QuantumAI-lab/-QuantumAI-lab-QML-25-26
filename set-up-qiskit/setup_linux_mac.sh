#!/bin/bash

# Name of the virtual environment
ENV_NAME="qiskit_env"
KERNEL_NAME="Qiskit Environment"

echo "Checking for Python 3..."
if ! command -v python3 &> /dev/null
then
    echo "Python 3 could not be found. Please install Python 3."
    exit 1
fi

echo "Creating virtual environment: $ENV_NAME"
if [ -d "$ENV_NAME" ]; then
    echo "Removing existing virtual environment..."
    rm -rf $ENV_NAME
fi
python3 -m venv $ENV_NAME

echo "Activating virtual environment..."
source $ENV_NAME/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing required libraries from requirements.txt..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "requirements.txt not found! Installing default packages..."
    pip install qiskit qiskit-aer qiskit-ibm-runtime numpy matplotlib seaborn pylatexenc jupyter notebook ipykernel
fi

echo "Registering Jupyter kernel..."
# Register the virtual environment as a Jupyter kernel
python -m ipykernel install --user --name="$ENV_NAME" --display-name="$KERNEL_NAME"

echo "----------------------------------------------------------------"
echo "Setup complete!"
echo ""
echo "✅ Virtual environment '$ENV_NAME' created with all Qiskit libraries"
echo "✅ Jupyter kernel '$KERNEL_NAME' registered"
echo ""
echo "📝 NEXT STEPS:"
echo "1. Open any notebook in the Notebooks/ folder"
echo "2. Select '$KERNEL_NAME' as the kernel (if prompted)"
echo "3. Start coding with Qiskit - no manual activation needed!"
echo ""
echo "🚀 You can now run: jupyter notebook"
echo "----------------------------------------------------------------"
