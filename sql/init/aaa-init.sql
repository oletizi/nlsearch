create database bds;

CREATE USER 'bds'@'localhost' IDENTIFIED BY 'bds';
CREATE USER 'bds'@'%' IDENTIFIED BY 'bds';

GRANT ALL ON *.* TO 'bds'@'localhost';
GRANT ALL ON *.* TO 'bds'@'%';
flush privileges;
