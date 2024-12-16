#!/bin/bash
set -x
REPO_URL="https://BAFGCFPIpQJm3SSCEPbBJUgLlmmdPmbNituL15uHxscteS8r2AyMJQQJ99ALACAAAAAAAAAAAAASAZDOJ9wU@dev.azure.com/sparshwadhwadevops/LearningAzureDevops/_git/LearningAzureDevops"
git clone "$REPO_URL" /tmp/temp_repo
cd /tmp/temp_repo
sed -i "s|image:.*|image: acr1216/$2:$3|g" k8s-specifications/$1-deployment.yaml
git add .
git commit -m "update K8s Manifests"
git push
rm -rf /tmp/temp_repo