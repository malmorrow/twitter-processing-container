#!/bin/bash

ZONE=us-west1-a
PROJECT_ID=twitter-processing

gcloud deployment-manager deployments create twitter-cluster \
    --config=kubernetes_engine.yaml \
    --project=$PROJECT_ID

# gcloud deployment-manager deployments create twitter-cluster \
#     --template=kubernetes_engine.py \
#     --properties=CLUSTER_NAME:twitter-cluster,CLUSTER_ZONE:${ZONE},NUM_NODES:1 \
#     --project=$PROJECT_ID
