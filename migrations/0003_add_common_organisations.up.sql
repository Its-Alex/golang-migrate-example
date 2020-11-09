CREATE SCHEMA IF NOT EXISTS common;

CREATE TABLE common.organisations (
  id      integer unique,
  name    varchar(40),
  user_id integer,
  CONSTRAINT fk_user_id FOREIGN KEY(user_id)  REFERENCES public.users(user_id)
);
