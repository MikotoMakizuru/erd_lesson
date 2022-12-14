-- DDL : 顧客テーブル
CREATE TABLE users
        (user_id          INTEGER NOT NULL,
				 name             VARCHAR(100),
				 kana             VARCHAR(100),
				 control_number   INTEGER,
				 PRIMARY KEY (user_id));

-- DML : 顧客データ
BEGIN TRANSACTION;
INSERT INTO users (user_id, name, kana, control_number) VALUES (000001, '田中一子', 'たなかいちこ', 90000001);
INSERT INTO users (user_id, name, kana, control_number) VALUES (000002, '田中二子', 'たなかふたこ', 90000002);
INSERT INTO users (user_id, name, kana, control_number) VALUES (000003, '田中三子', 'たなかみこ', 90000003);
INSERT INTO users (user_id, name, kana, control_number) VALUES (000004, '田中四子', 'たなかしこ', 90000004);
INSERT INTO users (user_id, name, kana, control_number) VALUES (000005, '田中五子', 'たなかごし', 90000005);
COMMIT;