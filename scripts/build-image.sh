#
echo "before building"
echo "$CONTAINER_REGISTRY"
echo "$VERSION"
set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$VERSION"

# build book-catalog
docker build -t $CONTAINER_REGISTRY/book-catalog:$VERSION --file ./book_catalog/Dockerfile .

# build inventory-management
docker build -t $CONTAINER_REGISTRY/inventory-management:$VERSION --file ./inventory_management/Dockerfile .
echo "after building"