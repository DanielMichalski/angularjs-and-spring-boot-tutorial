----------------------------------------------------------------------
-- users
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS users (
  id   INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);


----------------------------------------------------------------------
-- company_sectors
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS company_sectors (
  id   INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

----------------------------------------------------------------------
-- clients
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS clients (
  id                 INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
  company_name       VARCHAR(100) NOT NULL,
  contact_name       VARCHAR(50)  NOT NULL,
  contact_phone      VARCHAR(15)  NOT NULL,
  contact_email      VARCHAR(255) NOT NULL,
  account_manager_id INT          NOT NULL,
  notes              VARCHAR(500)                      DEFAULT NULL,
  sector_id          INT          NOT NULL,
  FOREIGN KEY (account_manager_id) REFERENCES users (id),
  FOREIGN KEY (sector_id) REFERENCES company_sectors (id)
);


----------------------------------------------------------------------
-- contact_timeline
----------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS contact_timeline (
  id           INT          NOT NULL PRIMARY KEY AUTO_INCREMENT,
  client_id    INT          NOT NULL,
  user_id      INT          NOT NULL,
  contact_date DATETIME     NOT NULL,
  contact_type VARCHAR(15)  NOT NULL,
  notes        VARCHAR(500) NOT NULL,
  FOREIGN KEY (client_id) REFERENCES clients (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);