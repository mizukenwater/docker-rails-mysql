#bin/bash
docker-compose run web rails new . --force --no-deps --database=mysql --skip-test --api
cp database.yml ./config/database.yml
docker-compose run web rails db:create
docker-compose build
docker-compose up