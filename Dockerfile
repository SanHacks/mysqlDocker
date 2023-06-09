version: "3.9"

services:
  db:
    image: mysql:8.0
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: gundo
      MYSQL_DATABASE: sagacity
      MYSQL_USER: gundo
      MYSQL_PASSWORD: root
    volumes:
      - ./mysql-data:/var/lib/mysql
    ports:
      - "3307:3306" # map MySQL port 3306 in the container to port 3307 on the host

  adminer:
    image: adminer:latest
    restart: always
    ports:
      - "8081:8080" # map Adminer port 8080 in the container to port 8081 on the host
