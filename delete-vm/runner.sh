#!/bin/bash

echo "🧠 GCP Delete VM Runbook"
read -p "👉 Enter your GCP Project ID: " project_id
read -p "👉 Enter VM Zone (e.g., us-central1-a): " zone
read -p "👉 Enter VM Name: " vm_name

echo "🚀 Deploying Workflow..."
gcloud workflows deploy delete-vm \
  --location=us-central1 \
  --source=delete-vm.yaml

echo "▶️ Running Workflow..."
gcloud workflows run delete-vm \
  --location=us-central1 \
  --data="{
    \"project_id\": \"$project_id\",
    \"zone\": \"$zone\",
    \"vm_name\": \"$vm_name\"
  }"
