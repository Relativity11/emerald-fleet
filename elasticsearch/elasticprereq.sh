#!/bin/bash
set -e

echo "Installing ECK CRDs..."
kubectl apply -f https://download.elastic.co/downloads/eck/2.16.1/crds.yaml

echo "Deploying ECK Operator..."
kubectl apply -f https://download.elastic.co/downloads/eck/2.16.1/operator.yaml

echo "Deploying Elasticsearch..."
kubectl apply -f elasticsearch.yaml

echo "Deploying Kibana..."
kubectl apply -f kibana.yaml

echo "Prereq Complete"