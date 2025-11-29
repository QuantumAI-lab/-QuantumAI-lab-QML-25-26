# Qiskit Environment Setup Guide

This folder contains scripts to automatically set up a Python environment with Qiskit and register it as a Jupyter kernel.

## 🚀 Quick Start

### Linux / macOS
1. Open your terminal.
2. Navigate to this folder:
   ```bash
   cd set-up-qiskit
   ```
3. Make the script executable:
   ```bash
   chmod +x setup_linux_mac.sh
   ```
4. Run the setup script:
   ```bash
   ./setup_linux_mac.sh
   ```

### Windows
1. Open Command Prompt or PowerShell.
2. Navigate to this folder:
   ```cmd
   cd set-up-qiskit
   ```
3. Run the setup script:
   ```cmd
   setup_windows.bat
   ```

---

## 📝 What does this do?
1. Creates a virtual environment named `qiskit_env`.
2. Installs all required libraries (Qiskit, NumPy, Matplotlib, etc.) from `requirements.txt`.
3. Registers a Jupyter kernel named **"Qiskit Environment"**.

---

## 💻 Using in VS Code

1. Open any `.ipynb` notebook in VS Code.
2. Click on the kernel selector (top right corner, usually says "Select Kernel" or "Python 3...").
3. Select **"Qiskit Environment"** from the list.

### ⚠️ Troubleshooting: Kernel Not Showing Up?

If you don't see "Qiskit Environment" in the list:

1. **Reload VS Code Window**:
   - Press `Ctrl + Shift + P` (or `Cmd + Shift + P` on Mac).
   - Type `Developer: Reload Window` and press Enter.
   - Try selecting the kernel again.

2. **Check Installation**:
   - Ensure the setup script finished with "Setup complete!".
   - You can verify the kernel exists by running `jupyter kernelspec list` in your terminal.

---

## 📦 Installed Packages
- `qiskit`
- `qiskit-aer`
- `qiskit-ibm-runtime`
- `numpy`
- `matplotlib`
- `seaborn`
- `pylatexenc`
- `jupyter`, `notebook`, `ipykernel`
