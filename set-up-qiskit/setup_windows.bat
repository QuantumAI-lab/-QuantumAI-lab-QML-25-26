@echo off
set ENV_NAME=qiskit_env
set KERNEL_NAME=Qiskit Environment

echo Checking for Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python could not be found. Please install Python.
    pause
    exit /b
)

echo Creating virtual environment: %ENV_NAME%
if exist %ENV_NAME% (
    echo Removing existing virtual environment...
    rmdir /s /q %ENV_NAME%
)
python -m venv %ENV_NAME%

echo Activating virtual environment...
call %ENV_NAME%\Scripts\activate

echo Upgrading pip...
python -m pip install --upgrade pip

echo Installing required libraries from requirements.txt...
if exist requirements.txt (
    pip install -r requirements.txt
) else (
    echo requirements.txt not found! Installing default packages...
    pip install qiskit qiskit-aer qiskit-ibm-runtime numpy matplotlib seaborn pylatexenc jupyter notebook ipykernel
)

echo Registering Jupyter kernel...
:: Register the virtual environment as a Jupyter kernel
python -m ipykernel install --user --name=%ENV_NAME% --display-name="%KERNEL_NAME%"

echo ----------------------------------------------------------------
echo Setup complete!
echo.
echo ✅ Virtual environment '%ENV_NAME%' created with all Qiskit libraries
echo ✅ Jupyter kernel '%KERNEL_NAME%' registered
echo.
echo 📝 NEXT STEPS:
echo 1. Open any notebook in the Notebooks/ folder
echo 2. Select '%KERNEL_NAME%' as the kernel (if prompted)
echo 3. Start coding with Qiskit - no manual activation needed!
echo.
echo 🚀 You can now run: jupyter notebook
echo ----------------------------------------------------------------
pause
