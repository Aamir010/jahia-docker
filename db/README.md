------ Build Step --------

1. Copy default my.cnf to your build folder and change some parameters like bind address, max_packet and so on
2. "Docker build -t Jahia-DB ."

------ Run Step --------

"docker run -d -it \
--name mysql \
-h mysql \
-p 3308:3306 \
-e CREATEDB=true \
-e MYSQL_CLIENT='%' \
-e MYSQL_PASS='root' \
-e MYSQL_DB='digital_factory' \
-e APP_USER='jahia' \
-e APP_PASS='jahia' \
jahia-db"
