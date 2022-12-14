-- DDL：出版社テーブル
CREATE TABLE publishers
	      (publisher_id         INTEGER NOT NULL,
				 publisher            VARCHAR(100),
				 PRIMARY KEY (publisher_id));

-- DML：出版社データ
BEGIN TRANSACTION;
INSERT INTO publishers (publisher_id, publisher) VALUES (0001, 'A談社');
INSERT INTO publishers (publisher_id, publisher) VALUES (0002, 'B談社');
INSERT INTO publishers (publisher_id, publisher) VALUES (0003, 'C談社');
INSERT INTO publishers (publisher_id, publisher) VALUES (0004, 'D談社');
INSERT INTO publishers (publisher_id, publisher) VALUES (0005, 'E談社');
COMMIT;