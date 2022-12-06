#!/bin/bash
set -xeuo pipefail
gcloud compute scp bacalhau-vm-production-0:/data/.bacalhau/bacalhau-event-tracer.json --project bacalhau-production ./events-0.json &
gcloud compute scp bacalhau-vm-production-1:/data/.bacalhau/bacalhau-event-tracer.json --project bacalhau-production ./events-1.json &
gcloud compute scp bacalhau-vm-production-2:/data/.bacalhau/bacalhau-event-tracer.json --project bacalhau-production ./events-2.json &
gcloud compute scp bacalhau-vm-production-3:/data/.bacalhau/bacalhau-event-tracer.json --project bacalhau-production ./events-3.json &
gcloud compute scp bacalhau-vm-production-4:/data/.bacalhau/bacalhau-event-tracer.json --project bacalhau-production --zone europe-west4-a ./events-4.json &
scp luke@mind.lukemarsden.net:.bacalhau/bacalhau-event-tracer.json ./events-mind.json
