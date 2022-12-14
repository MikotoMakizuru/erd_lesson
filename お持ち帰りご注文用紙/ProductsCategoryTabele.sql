-- DDL : 商品カテゴリテーブル
CREATE TABLE ProductsCategory
        (product_category_id    INTEGER NOT NULL,          
				 product_category_name  VARCHAR(100),
				 PRIMARY KEY (product_category_id));

-- DML : 商品カテゴリデータ
BEGIN TRANSACTION;
INSERT INTO ProductsCategory (product_category_id, product_category_name) VALUES (001, 'お持ち帰り弁当');
INSERT INTO ProductsCategory (product_category_id, product_category_name) VALUES (002, '持ち帰り専用プレート');
INSERT INTO ProductsCategory (product_category_id, product_category_name) VALUES (003, '点心・前菜');
INSERT INTO ProductsCategory (product_category_id, product_category_name) VALUES (004, '一品料理');
INSERT INTO ProductsCategory (product_category_id, product_category_name) VALUES (005, '飯・麺');
COMMIT;