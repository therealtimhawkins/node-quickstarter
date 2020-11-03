echo "Building winston..."

npm i winston

mkdir -p src/config
cp scripts/winston/winston.txt src/config/winston.ts

echo "WINSTON_LOG_LEVEL=debug" >> .env

# rm -rf scripts/winston

echo "Winston built."
