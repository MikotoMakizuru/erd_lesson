-- DDL : 商品テーブル
CREATE TABLE Products
        (product_id             INTEGER NOT NULL,
         product_name           VARCHAR(100),
         price                  INTEGER,
         tax_included_price     INTEGER,
         product_class          INTEGER,
         product_category_id    INTEGER NOT NULL,
         PRIMARY KEY (product_id),
         FOREIGN KEY (product_category_id)
                                REFERENCES ProductsCategory (product_category_id));

-- DML : 商品データ
BEGIN TRANSACTION;
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0001, 'チャーハンコンボ', 680, 714, 01, 001);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0002, '牛肉ピーマン・マーボー弁当', 730, 767, 01, 001);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0003, '特選中華弁当・四川', 780, 819, 01, 001);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0004, '「得トク」プレート', 2980, 3129, 02, 002);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0005, '「欲バリ」プレート', 3980, 4179, 02, 002);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0006, '自慢・焼餃子', 180, 189, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0007, 'ゴマ付きだんご', 240, 252, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0008, 'はちみつ揚げパン', 240, 252, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0009, '香港プライドポテト', 280, 294, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0010, '海老春巻', 280, 294, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0011, 'ポークしゅうまい', 280, 294, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0012, 'カリカリ・花巻（揚げ）', 280, 294, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0013, 'ふわふわ・花巻（蒸し）', 280, 294, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0014, '芒果ジュース', 330, 347, 01, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0015, '西瓜ジュース', 330, 347, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0016, '杭州東坡肉（豚の角煮）', 380, 399, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0017, '若鶏のからあげ', 480, 504, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0018, 'バンバンジーサラダ', 480, 504, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0019, '海老マヨネーズ', 580, 609, 02, 003);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0020, 'マーボー豆腐', 480, 504, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0021, '辛口・本格四川マーボー豆腐', 480, 504, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0022, '若鶏の甘酢しょうゆ', 480, 504, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0023, '牛肉とピーマンの細切り炒め', 580, 609, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0024, 'からあげの黒酢ソース', 580, 609, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0025, 'ホウコーロウ', 580, 609, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0026, '夏の特製酢豚', 680, 714, 01, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0027, '海老野菜炒め', 680, 714, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0028, '角切り牛肉のカシューナッツ炒め', 680, 714, 01, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0029, '海老チリソース', 780, 819, 02, 004);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0030, 'チャーハン', 480, 504, 02, 005);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0031, '旬の・中華丼', 680, 714, 02, 005);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0032, '旬の・五目焼そば', 680, 714, 02, 005);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0033, '上海風・蟹入り天津飯', 680, 714, 02, 005);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0034, '桜海老の台湾焼ビーフン', 680, 714, 02, 005);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0035, '大海老の旨辛あんかけご飯', 680, 714, 01, 005);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0036, '五目冷し中華', 680, 714, 02, 005);
INSERT INTO Products (product_id, product_name, price, tax_included_price, product_class, product_category_id) VALUES (0037, '海鮮・皿うどん', 780, 819, 02, 005);
COMMIT;