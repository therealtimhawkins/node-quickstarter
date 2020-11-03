echo "Building all..."

npm run build:express $1
npm run build:knex
npm run build:winston
npm run build:docker $1
# npm run rm:all

echo "Everything built."
