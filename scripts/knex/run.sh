echo "Building knex..."

npm i knex mysql objection

mkdir -p src/config
cp scripts/knex/knex.txt src/config/knex.ts
cp scripts/knex/knexfile.txt src/knexfile.ts

echo "SQL_HOST=" >> .env
echo "SQL_USER=" >> .env
echo "SQL_PASS=" >> .env
echo "SQL_DB=" >> .env
echo "SQL_PORT=" >> .env

# rm -rf scripts/knex

echo "Knex built."
