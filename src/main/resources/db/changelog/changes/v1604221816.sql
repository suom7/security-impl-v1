create table IF NOT EXISTS users (
  id bigserial not null,
  email varchar(50) not null,
  username varchar(20) not null,
  password varchar(120) not null,
  primary key (id)
);

create table IF NOT EXISTS roles (
  id bigserial not null,
  name varchar(20) not null,
  primary key (id)
);

create table IF NOT EXISTS user_roles (
  id bigserial not null,
  user_id bigint NOT NULL,
  role_id bigint NOT NULL,
  primary key (id)
);

INSERT INTO roles(name) VALUES('ROLE_USER');
INSERT INTO roles(name) VALUES('ROLE_EDITOR');
INSERT INTO roles(name) VALUES('ROLE_SELLER');
INSERT INTO roles(name) VALUES('ROLE_ADMIN');
