# What versions I have
pyenv versions

# Install new version
# 1. See what versions we have
pyenv install --list | grep 3.9
# 2. Install new version
pyenv install 3.9.0

# Crete new project dir
mkdir debugdemo
cd debugdemo

# Make my shell use version 3.9.0 instead of system python
pyenv local 3.9.0
# OR alternatively
echo "3.9.0" > .python-version

# Check that we are on correct version
python --version

# See what venv can do
python -m venv --help

# Create virtual environment
python -m venv .venv

# Activate virtual env
source .venv/bin/activate

# Install required packages
pip install debugpy black ipython

# Save our list of dependencies as requirements
pip freeze > requirements.txt

# (Note) Hot to install dependencies from requirements file
pip install -r requirements.txt

# How to remove dependency using pip
pip uninstll debugpy

# Deactivate environment
deactivate

# Delete virtual environment
rm -rf .venv