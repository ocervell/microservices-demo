export CLUSTER_NAME="demo-microservices"
export CLUSTER_ZONE="us-east1-b"
export CLUSTER_VERSION="1.10.5"
export PROJECT_ID="rnm-stackdriver-demos"
gcloud beta container clusters create $CLUSTER_NAME --zone=$CLUSTER_ZONE --num-nodes=4 --disk-size=100 --cluster-version=$CLUSTER_VERSION --enable-stackdriver-kubernetes --enable-cloud-logging --enable-cloud-monitoring --scopes "https://www.googleapis.com/auth/cloud-platform" --machine-type "n1-standard-1" --image-type "COS" --project $PROJECT_ID

