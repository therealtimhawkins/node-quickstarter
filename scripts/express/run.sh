#!/usr/bin/env bash

echo "Building express..."

npm i express compression helmet morgan
npm install --save-dev @types/express @types/compression @types/morgan

mkdir -p src/config
mkdir -p src/api
cp scripts/express/server.txt src/config/server.ts
cp scripts/express/router.txt src/api/index.ts

echo "import app from './config/server'\n$(cat src/index.ts)" > src/index.ts
while read line;
do echo $line >> src/index.ts;
done < scripts/express/index.txt

echo "PORT=$1" >> .env
echo "LOG_LEVEL=dev" >> .env

# rm -rf scripts/express
echo "Built express."
