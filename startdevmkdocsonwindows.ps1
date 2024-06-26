# This is for running mkdocs locally on Windows.
# Make sure you change directory to your docs folder before starting this process
# Use the "Run Selection" in VS Code to run the code blocks as-needed

# In case you have ExecutionPolicy problems
Set-ExecutionPolicy -Scope CurrentUser Unrestricted

# Activate Python
python -m venv env
.\env\Scripts\activate 

# Install requirements first time only
python -m pip install --upgrade pip #only 1st time
pip install --upgrade setuptools wheel
pip install -r requirements.txt

# Run mkdocs and look at changes as you make them
Start-Process http://localhost:8005 #Opens Browser
mkdocs serve

# Deactivate Python environment
deactivate
