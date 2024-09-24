# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Delete both book-catalog and inventory-management deployments
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -
envsubst < ./scripts/kubernetes/service.yaml | kubectl delete -f -