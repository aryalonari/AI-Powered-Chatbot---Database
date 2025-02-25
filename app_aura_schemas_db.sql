create database app_aura;
use app_aura;

-- staff table 
CREATE TABLE staff_user (
    staff_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(255),
    staff_email VARCHAR(255) UNIQUE,
    password VARCHAR(255) UNIQUE,
    staff_type INT(11) UNIQUE,
    added_on TIMESTAMP NOT NULL default current_timestamp,
    status TINYINT DEFAULT 1,
    deleted TINYINT DEFAULT 0
);

-- users table 
CREATE TABLE app_users (
    user_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(255) not null,
    user_email VARCHAR(255) not null UNIQUE,
    password VARCHAR(255) not null UNIQUE,
    user_phone_no int(20) not null,
    added_on TIMESTAMP NOT NULL,
    status TINYINT DEFAULT 1,
    deleted TINYINT DEFAULT 0
);

-- model type table

create table app_model_type(
	model_id int(11) primary key auto_increment,
    model_name varchar(255) not null,
    model_version varchar(255) not null,
    credentials longtext ,
    added_on TIMESTAMP default current_timestamp,
    status tinyint default 1,
    deleted tinyint default 0
);

-- user_model_mapped table
create table user_model_mapped(
	map_id int(11) primary key auto_increment,
    user_id int(11) not null,
    model_id int(11) not null,
    added_on TIMESTAMP default current_timestamp,
    status tinyint default 1,
    deleted tinyint default 0,
    FOREIGN KEY (user_id) REFERENCES app_users(user_id),
    FOREIGN KEY (model_id) REFERENCES app_model_type(model_id)
);

-- req_res_log  table
CREATE TABLE req_res_log (
    log_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    map_id INT(11) NOT NULL,
    req_log LONGTEXT NOT NULL,
    req_query LONGTEXT NOT NULL,
    res_log LONGTEXT NOT NULL,
    query_count INT(11) DEFAULT 0,
    added_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TINYINT DEFAULT 1,
    deleted TINYINT DEFAULT 0,
    FOREIGN KEY (map_id)
	REFERENCES user_model_mapped (map_id)
);





