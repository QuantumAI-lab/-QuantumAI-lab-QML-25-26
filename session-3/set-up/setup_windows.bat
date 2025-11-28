@echo off
set ENV_NAME=qiskit_env

echo Checking for Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python could not be found. Please install Python.
    pause
    exit /b
)

echo Creating virtual environment: %ENV_NAME%
python -m venv %ENV_NAME%

echo Activating virtual environment...
call %ENV_NAME%\Scripts\activate

echo Upgrading pip...
python -m pip install --upgrade pip

echo Installing required libraries...
:: Core Qiskit and Quantum libraries
pip install qiskit qiskit-aer qiskit-ibm-runtime

:: Data Science and Visualization
pip install numpy matplotlib seaborn pylatexenc

:: Jupyter Notebook environment
pip install jupyter notebook

echo ----------------------------------------------------------------
echo Setup complete!
echo To activate the environment, run the following command:
echo %ENV_NAME%\Scripts\activate
echo ----------------------------------------------------------------
pause
