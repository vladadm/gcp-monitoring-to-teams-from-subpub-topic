#!/bin/sh

set +e

gcloud functions deploy gcp-monitoring-to-teams-pub \
    --entry-point=PubSubReceiver \
    --memory=128MB \
    --region={gcp_region} \
    --runtime=go113 \
    --env-vars-file=env.yaml \
    ----trigger-topic={topic_name} \
    --timeout=10s
