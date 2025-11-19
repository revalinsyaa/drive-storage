
CREATE DATABASE IF NOT EXISTS hospital_map;
USE hospital_map;

CREATE TABLE floors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  floor_name VARCHAR(100),
  image_path VARCHAR(255),
  width INT,
  height INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE rooms (
  id INT AUTO_INCREMENT PRIMARY KEY,
  floor_id INT,
  name VARCHAR(150),
  category VARCHAR(100),
  x INT,
  y INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE nodes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  floor_id INT,
  x INT,
  y INT,
  type ENUM('normal','stair','lift') DEFAULT 'normal',
  label VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE edges (
  id INT AUTO_INCREMENT PRIMARY KEY,
  node_from INT,
  node_to INT,
  distance FLOAT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE room_nodes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  room_id INT,
  node_id INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
