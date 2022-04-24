#!/bin/bash

docker run --rm -ti -p 8080:8085 \
    gcr.io/google.com/cloudsdktool/cloud-sdk:382.0.0-emulators \
    gcloud beta emulators pubsub start \
      --project=twitter-processing \
      --host-port=0.0.0.0:8085