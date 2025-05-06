-- Create the broke2binge_mgt Database
CREATE DATABASE broke2binge_mgt;
USE broke2binge_mgt;

-- Table: Admin
CREATE TABLE Admin (
  admin_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  role ENUM('Superadmin', 'Content Manager', 'Report Viewer') NOT NULL,
  created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table: Viewer
CREATE TABLE Viewer (
  viewer_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Table: Origin (Must be created before referencing in Title)
CREATE TABLE Origin (
  origin_id INT AUTO_INCREMENT PRIMARY KEY,
  country VARCHAR(100) NOT NULL,
  language VARCHAR(50) NOT NULL
);

-- Table: Genre (Must be created before Title_Genre)
CREATE TABLE Genre (
  genre_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Table: Title (Must be created before using as PK-FK in Title_Genre and referencing in License, ViewCount, InteractionStats) 
CREATE TABLE Title (
  title_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  type ENUM('Movie', 'Series', 'Animation', 'Documentary', 'Reality', 'Short', 'Kids', 'Music', 'Sport') NOT NULL,
  original_release_date DATE,
  is_original BOOLEAN,
  origin_id INT,
  season_count INT,
  episode_count INT,
  is_deleted BOOLEAN DEFAULT 0,
  FOREIGN KEY (origin_id) REFERENCES Origin(origin_id)
);

-- Junction Table: Title_Genre
CREATE TABLE Title_Genre (
  title_id INT,
  genre_id INT,
  PRIMARY KEY (title_id, genre_id),
  FOREIGN KEY (title_id) REFERENCES Title(title_id),
  FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

-- Table: ContentProvider (Must be created before referencing in License)
CREATE TABLE ContentProvider (
  provider_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  phone VARCHAR(20),
  address TEXT
);

-- Table: License
CREATE TABLE License (
  license_id INT AUTO_INCREMENT PRIMARY KEY,
  title_id INT NOT NULL,
  provider_id INT,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  is_active BOOLEAN DEFAULT 1,
  FOREIGN KEY (title_id) REFERENCES Title(title_id),
  FOREIGN KEY (provider_id) REFERENCES ContentProvider(provider_id)
);

-- Table: ViewCount
CREATE TABLE ViewCount (
  view_id INT AUTO_INCREMENT PRIMARY KEY,
  title_id INT NOT NULL,
  date DATE NOT NULL,
  views INT NOT NULL,
  FOREIGN KEY (title_id) REFERENCES Title(title_id)
);

-- Table: InteractionStats
CREATE TABLE InteractionStats (
  stat_id INT AUTO_INCREMENT PRIMARY KEY,
  title_id INT NOT NULL,
  date DATE NOT NULL,
  likes INT DEFAULT 0,
  list_adds INT DEFAULT 0,
  FOREIGN KEY (title_id) REFERENCES Title(title_id)
);