#!/bin/bash

# Prompt the user to enter the project directory name 
read -p "Enter the project directory name: " PROJECT_DIR

# Create the main project directory 
mkdir "$PROJECT_DIR" 
cd "$PROJECT_DIR" 

# Create subdirectories 
mkdir -p {docs,logs,data,scripts}

# Create initial setup files
touch docs/file1.txt logs/file2.log data/file3.csv scripts/file4.sh

# Adjust file permissions
chmod 700 scripts/  # Allow only the user to execute the script
chmod 700 scripts/*
# Set ownership of the data directory 
sudo chown student1:projectgroup data

# Define PROJECT_ROOT (it should be the full path)
PROJECT_ROOT="$(pwd)"

# Display the created directory structure
echo "Project structure created at $PROJECT_ROOT:"
tree "$PROJECT_ROOT"

# Confirm permission settings
echo "Permissions"
ls -l
ls -l scripts/
