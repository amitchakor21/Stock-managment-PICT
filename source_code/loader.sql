show databases;

CREATE USER 'root99'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'root99'@'localhost';

create database stockd2;

use stockd2;

select * from user;

SET GLOBAL time_zone = '+5:30';


SELECT now();
