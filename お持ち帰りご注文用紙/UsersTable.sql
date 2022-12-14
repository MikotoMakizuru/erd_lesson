--DDL : 顧客テーブル
CREATE TABLE Users
        (user_id          INTEGER NOT NULL,
				 name             VARCHAR(100),
				 phone_number     VARCHAR(100),
				 PRIMARY KEY (user_id));

--DML : 顧客データ
BEGIN TRANSACTION;
INSERT INTO Users (user_id, name, phone_number) VALUES (000001, '加藤 達夫', '080-1234-0001');
INSERT INTO Users (user_id, name, phone_number) VALUES (000002, '藤本 信二', '080-1234-0002');
INSERT INTO Users (user_id, name, phone_number) VALUES (000003, '三島 篤史', '080-1234-0003');
INSERT INTO Users (user_id, name, phone_number) VALUES (000004, '田島 陽子', '080-1234-0004');
INSERT INTO Users (user_id, name, phone_number) VALUES (000005, '牧鶴 尊都', '080-1234-0005');
COMMIT;