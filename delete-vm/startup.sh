#!/bin/bash

echo "🔁 Setting up Cloud Shell environment..."

# Make sure runner.sh is executable
chmod +x runner.sh

# Automatically execute your original deploy script
./runner.sh
