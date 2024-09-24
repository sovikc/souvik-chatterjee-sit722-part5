# Your Solution
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

echo "started building"
# build book-catalog
docker build -t $CONTAINER_REGISTRY/book-catalog:$VERSION --file ./book_catalog/Dockerfile .

# build inventory-management
docker build -t $CONTAINER_REGISTRY/inventory-management:$VERSION --file ./inventory-management/Dockerfile .
echo "after building"