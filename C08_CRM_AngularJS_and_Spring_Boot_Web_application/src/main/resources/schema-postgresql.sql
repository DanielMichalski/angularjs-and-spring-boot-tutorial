DROP TABLE IF EXISTS users CASCADE ;
DROP TABLE IF EXISTS company_sectors CASCADE;
DROP TABLE IF EXISTS clients CASCADE;
DROP TABLE IF EXISTS contact_timeline CASCADE;

----------------------------------------------------------------------
-- users
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS users (
  id   SERIAL       NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

----------------------------------------------------------------------
-- company_sectors
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS company_sectors (
  id   SERIAL       NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

----------------------------------------------------------------------
-- clients
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS clients (
  id                 SERIAL       NOT NULL PRIMARY KEY,
  company_name       VARCHAR(100) NOT NULL,
  contact_name       VARCHAR(50)  NOT NULL,
  contact_phone      VARCHAR(15)  NOT NULL,
  contact_email      VARCHAR(255) NOT NULL,
  account_manager_id INT          NOT NULL,
  notes              VARCHAR(500) DEFAULT NULL,
  sector_id          INT          NOT NULL,
  FOREIGN KEY (account_manager_id) REFERENCES users (id),
  FOREIGN KEY (sector_id) REFERENCES company_sectors (id)
);

----------------------------------------------------------------------
-- contact_timeline
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS contact_timeline (
  id           SERIAL       NOT NULL PRIMARY KEY,
  client_id    INT          NOT NULL,
  user_id      INT          NOT NULL,
  contact_date TIMESTAMP    NOT NULL,
  contact_type VARCHAR(15)  NOT NULL,
  notes        VARCHAR(500) NOT NULL,
  FOREIGN KEY (client_id) REFERENCES clients (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);