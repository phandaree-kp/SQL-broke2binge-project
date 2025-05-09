CREATE TABLE Admin (
  admin_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
      email VARCHAR(100) NOT NULL UNIQUE, 
        password_hash VARCHAR(255) NOT NULL,
          role VARCHAR(20) CHECK (role IN ('Superadmin', 'Content Manager', 'Report Viewer')) NOT NULL,
            created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
              is_deleted BOOLEAN DEFAULT FALSE
              );
CREATE TABLE Viewer (
  viewer_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
      email VARCHAR(100) NOT NULL UNIQUE,
        password_hash VARCHAR(255) NOT NULL,
          created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
          );
CREATE TABLE Origin (
  origin_id SERIAL PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
      language VARCHAR(50) NOT NULL
      );
CREATE TABLE Genre (
  genre_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
    );
CREATE TABLE Title (
  title_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
      type VARCHAR(20) CHECK (type IN ('Movie', 'Series', 'Animation', 'Documentary', 'Reality', 'Short', 'Kids', 'Music', 'Sport')) NOT NULL,
        original_release_date DATE,
          is_original BOOLEAN,
            origin_id INT NOT NULL,
              season_count INT NOT NULL DEFAULT 0,
                episode_count INT NOT NULL DEFAULT 0,
                  is_deleted BOOLEAN DEFAULT FALSE,
                    FOREIGN KEY (origin_id) REFERENCES Origin(origin_id)
                    );
CREATE TABLE ContentProvider (
  provider_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
      email VARCHAR(100),
        phone VARCHAR(20),
          address TEXT,
            is_deleted BOOLEAN DEFAULT FALSE
            );
CREATE TABLE Title_Genre (
  title_id INT,
  	genre_id INT,
  		PRIMARY KEY (title_id, genre_id),
  			FOREIGN KEY (title_id) REFERENCES Title(title_id),
  				FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
				);
CREATE TABLE License (
  license_id SERIAL PRIMARY KEY,
    title_id INT NOT NULL,
      provider_id INT NOT NULL,
        start_date DATE NOT NULL,
          end_date DATE NOT NULL,
            is_active BOOLEAN DEFAULT TRUE,
              is_deleted BOOLEAN DEFAULT FALSE,
                FOREIGN KEY (title_id) REFERENCES title(title_id),
                  FOREIGN KEY (provider_id) REFERENCES contentprovider(provider_id)
                  );
CREATE TABLE ViewCount (
  view_id SERIAL PRIMARY KEY,
    title_id INT NOT NULL,
      date DATE NOT NULL,
        views INT NOT NULL DEFAULT '0',
          FOREIGN KEY (title_id) REFERENCES title(title_id)
          );
CREATE TABLE InteractionStats (
  stat_id SERIAL PRIMARY KEY,
    title_id INT NOT NULL,
      date DATE NOT NULL,
        likes INT NOT NULL DEFAULT 0,
          list_adds INT NOT NULL DEFAULT 0,
            FOREIGN KEY (title_id) REFERENCES title(title_id)
            );