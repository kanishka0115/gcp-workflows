#!/bin/bash
echo "🔁 Setting up Cloud Shell environment..."

# Make runner executable and launch
chmod +x delete-vm/runner.sh
cd delete-vm
./runner.sh
