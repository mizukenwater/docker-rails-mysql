#bin/bash
sudo chown -R $USER:$USER .
docker-compose run web rails new . --force --no-deps --database=mysql --skip-test --api
cp database.yml ./config/database.yml
docker-compose build