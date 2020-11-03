echo "Rolling back..."

rm -rf src/api
rm -rf src/config
rm -rf src/knexfile.ts
rm -rf dev.Dockerfile
rm -rf Dockerfile
rm -rf docker-compose.yml

cp scripts/rollback/index.txt src/index.ts

rm -rf .env
touch .env

echo "Rolled back."
