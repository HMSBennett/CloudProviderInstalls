curl https://sdk.cloud.google.com | bash

gcloud compute project-info add-metadata --metadatagoogle-compute-default-region=europe-west1,google-compute-default-zone=europe-west1-b

echo 'GCLOUD_CONFIG=$(gcloud config list --format json)' >> .bashrc
echo 'GCLOUD_PROJECT=$(echo -n $(GCLOUD_CONFIG) | jq -r ".core.project")' >> .bashrc
echo 'GCLOUD_REGION=$(echo -n $(GCLOUD_CONFIG) | jq -r ".compute.region")' >> .bashrc
echo 'GCLOUD_ZONE=$(echo -n $(GCLOUD_CONFIG) | jq -r ".compute.zone")' >> .bashrc

