-- DDL：書籍テーブル
CREATE TABLE books 
        (book_id          INTEGER NOT NULL,
				 book_name        VARCHAR(100),
				 author           VARCHAR(100),
				 price            INTEGER,
				 publisher_id     INTEGER NOT NULL,
				 publication_year INTEGER,
				 PRIMARY KEY (book_id),
				 FOREIGN KEY (publisher_id)
				                  REFERENCES Publishers (publisher_id)
													ON UPDATE RESTRICT);

-- DML : 書籍データ
BEGIN TRANSACTION;
INSERT INTO books (book_id, book_name, author, price, publisher_id, publication_year) VALUES (0001, '書籍A', '鈴木一郎', 1000, 0001, 2000);
INSERT INTO books (book_id, book_name, author, price, publisher_id, publication_year) VALUES (0002, '書籍B', '鈴木二郎', 1100, 0002, 2001);
INSERT INTO books (book_id, book_name, author, price, publisher_id, publication_year) VALUES (0003, '書籍C', '鈴木三郎', 1200, 0003, 2002);
INSERT INTO books (book_id, book_name, author, price, publisher_id, publication_year) VALUES (0004, '書籍D', '鈴木四郎', 1300, 0004, 2003);
INSERT INTO books (book_id, book_name, author, price, publisher_id, publication_year) VALUES (0005, '書籍E', '鈴木五郎', 1400, 0005, 2004);
COMMIT;