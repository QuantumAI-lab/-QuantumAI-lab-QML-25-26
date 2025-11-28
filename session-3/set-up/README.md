# Quantum Computing Environment Setup

This folder contains scripts to set up a Python environment with all the necessary libraries for learning Intro to Quantum Computing with Qiskit.

## Prerequisites

- **Python 3**: Ensure you have Python 3 installed on your system.
  - [Download Python](https://www.python.org/downloads/)

## Setup Instructions

### Linux and macOS

1.  Open your terminal.
2.  Navigate to this folder (`session-3/set-up`).
3.  Run the setup script:
    ```bash
    bash setup_linux_mac.sh
    ```
    Or make it executable and run it:
    ```bash
    chmod +x setup_linux_mac.sh
    ./setup_linux_mac.sh
    ```
4.  This will create a virtual environment named `qiskit_env` and install all required libraries.

### Windows

1.  Open File Explorer and navigate to this folder (`session-3\set-up`).
2.  Double-click on `setup_windows.bat`.
3.  A command prompt window will open and install the libraries.
4.  Once finished, it will display a success message.

## How to Run

### Activating the Environment

Before running any notebooks or scripts, you must activate the virtual environment.

**Linux / macOS:**
```bash
source qiskit_env/bin/activate
```

**Windows (Command Prompt):**
```cmd
qiskit_env\Scripts\activate
```

**Windows (PowerShell):**
```powershell
.\qiskit_env\Scripts\Activate.ps1
```

### Running Jupyter Notebooks

1.  Activate the environment (see above).
2.  Start Jupyter Notebook:
    ```bash
    jupyter notebook
    ```
3.  This will open your web browser. Navigate to your `.ipynb` files and open them.

### Running Python Scripts

1.  Activate the environment.
2.  Run your script:
    ```bash
    python your_script.py
    ```

## Installed Libraries

The following libraries are installed:

- **Qiskit**: The main quantum computing framework.
- **Qiskit Aer**: For simulating quantum circuits locally.
- **Qiskit IBM Runtime**: For accessing IBM Quantum hardware.
- **NumPy**: For numerical computations.
- **Matplotlib & Seaborn**: For plotting and visualization.
- **PyLaTeXenc**: For better circuit visualization.
- **Jupyter Notebook**: For interactive coding.
