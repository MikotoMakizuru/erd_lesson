--DDL:図書館テーブル
CREATE TABLE libraries
        (library_id     INTEGER NOT NULL,
				 library_name   VARCHAR(100),
				 PRIMARY KEY (library_id));

--DML:図書館データ
BEGIN TRANSACTION;
INSERT INTO libraries (library_id, library_name) VALUES (0001, '図書館A');
INSERT INTO libraries (library_id, library_name) VALUES (0002, '図書館B');
INSERT INTO libraries (library_id, library_name) VALUES (0003, '図書館D');
INSERT INTO libraries (library_id, library_name) VALUES (0004, '図書館E');
INSERT INTO libraries (library_id, library_name) VALUES (0005, '図書館F');
COMMIT;