#bin/bash
cd build
docker-compose run web rails new ../src --force --no-deps --database=mysql --skip-test --api
cp database.yml ../src/config/database.yml
docker-compose build
docker-compose up