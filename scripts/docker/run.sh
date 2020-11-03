echo "Building docker..."

cp scripts/docker/dev.Dockerfile dev.Dockerfile
cp scripts/docker/docker-compose.txt docker-compose.yml
cp scripts/docker/Dockerfile Dockerfile

sed -i -e "s/NAME/${PWD##*/}/g" docker-compose.yml
sed -i -e "s/PORT/$1/g" docker-compose.yml

rm -rf docker-compose.yml-e

echo "Docker built."
