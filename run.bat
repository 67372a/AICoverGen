@echo off

REM Change to your Python script's directory
cd %~dp0

REM Check if virtual environment exists
if not exist "venv\" (
    echo Creating virtual environment...
    python -m venv venv
)

REM Activate the virtual environment
call venv\Scripts\activate

REM Check if requirements are installed
echo Installing requirements...
pip install -r requirements.txt

REM Run your Python script
python src\webui.py

REM Deactivate the virtual environment
deactivate

echo Script execution finished.
pause
