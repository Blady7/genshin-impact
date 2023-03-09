CREATE DATABASE database1
	CHARACTER SET utf8
	COLLATE utf8_hungarian_ci;

CREATE TABLE database1.regions (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB;

CREATE TABLE database1.characters (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  regionId INT(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB;

INSERT INTO regions
  (id, name)
  VALUES
  (1, 'Mondstadt'), (2, 'Liyue'), (3, 'Inazuma'), (4, 'Sumeru');

INSERT INTO characters
  (name, regionId)
  VALUES
  ('Jean', 1), ('Amber', 1), ('Lisa', 1), ('Kaeya', 1), ('Barbara', 1), ('Diluc', 1), ('Razor', 1), ('Venti', 1), ('Klee', 1), ('Bennett', 1), ('Noelle', 1), ('Fischl', 1), ('Sucrose', 1), ('Mona', 1), ('Diona', 1), ('Albedo', 1), ('Rosaria', 1), ('Eula', 1), ('Aloy', 1), ('Mika', 1),
  ('Xiao', 2), ('Beidou', 2), ('Ningguang', 2), ('Xiangling', 2), ('Xinqiu', 2), ('Chongyun', 2), ('Qiqi', 2), ('Keqing', 2), ('Tartaglia', 2), ('Zhonli', 2), ('Xinyan', 2), ('Ganyu', 2), ('Hu Tao', 2), ('Yanfei', 2), ('Shenhe', 2), ('Yun Jin', 2), ('Yelan', 2), ('YaoYao', 2),
  ('Ayaka', 3), ('Kazuha', 3), ('Yoimiya', 3), ('Sayu', 3), ('Raiden', 3), ('Sara', 3), ('Kokomi', 3), ('Thoma', 3), ('Itto', 3), ('Gorou', 3), ('Yae Miko', 3), ('Ayato', 3), ('Shinobu', 3), ('Heizou', 3),
  ('Tighnari', 4), ('Collei', 4), ('Dori', 4), ('Cyno', 4), ('Candace', 4), ('Nilou', 4), ('Nahida', 4), ('Layla', 4), ('Wanderer', 4), ('Faruzan', 4), ('Alhaitam', 4), ('Dehya', 4);

SELECT characters.name, r.name FROM characters
  inner JOIN regions r ON r.id = characters.regionId; 
