# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -
envsubst < ./scripts/kubernetes/service.yaml | kubectl apply -f -