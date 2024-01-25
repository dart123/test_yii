CREATE USER test_user;
CREATE DATABASE test_yii
GRANT ALL PRIVILEGES ON DATABASE test_yii TO test_user;
CREATE TYPE decision_type AS ENUM ('approved', 'declined');
CREATE TABLE images(
  image_id PRIMARY KEY, 
  link VARCHAR (255) UNIQUE NOT NULL, 
  decision decision_type NOT NULL
);