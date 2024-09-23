# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# build book-catalog
docker build -t $CONTAINER_REGISTRY/book-catalog:$VERSION --file ./book_catalog/Dockerfile ./book_catalog

# build inventory-management
docker build -t $CONTAINER_REGISTRY/inventory-management:$VERSION --file ./inventory-management/Dockerfile ./inventory-management