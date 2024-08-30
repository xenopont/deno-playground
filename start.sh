echo "Building containers..."
echo ""
docker build -t api-image --file ./docker/dev-api.dockerfile .

echo "Starting containers..."
echo ""
docker compose -p deno-playground --file ./docker/dev-composition.json up -d
