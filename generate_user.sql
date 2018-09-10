CREATE USER IF NOT EXISTS 'mcube'@'localhost' IDENTIFIED BY 'mcube';
CREATE DATABASE IF NOT EXISTS mcube;
GRANT ALL PRIVILEGES ON mcube.* TO 'mcube'@'localhost';
