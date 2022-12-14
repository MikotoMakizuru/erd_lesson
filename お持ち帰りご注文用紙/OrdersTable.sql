-- DDL : 注文テーブル
CREATE TABLE Orders
        (order_id             INTEGER NOT NULL,
				 order_count          INTEGER,
				 product_id           INTEGER NOT NULL,
				 user_id              INTEGER NOT NULL,
				 PRIMARY KEY (order_id),
				 FOREIGN KEY (user_id)
				                      REFERENCES Users (user_id),
				 FOREIGN KEY (product_id)
				                      REFERENCES Products (product_id));

-- DML : 注文データ
BEGIN TRANSACTION;
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001001, 5, 0001, 000001);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001002, 2, 0004, 000001);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001003, 4, 0006, 000001);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001004, 1, 0020, 000001);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001005, 3, 0030, 000001);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001006, 3, 0002, 000002);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001007, 1, 0005, 000002);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001008, 5, 0007, 000002);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001009, 4, 0003, 000003);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001010, 5, 0009, 000003);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001011, 2, 0013, 000003);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001012, 5, 0003, 000004);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001013, 3, 0018, 000004);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001014, 1, 0025, 000004);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001015, 8, 0015, 000005);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001016, 4, 0016, 000005);
INSERT INTO Orders (order_id, order_count, product_id, user_id) VALUES (001017, 6, 0017, 000005);
COMMIT;