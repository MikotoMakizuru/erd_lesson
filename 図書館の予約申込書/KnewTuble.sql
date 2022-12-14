-- DDL : 知ったテーブル
CREATE TABLE knew
        (knew_id                    INTEGER NOT NULL,
				 new_books_guide_number     INTEGER,
				 newspaper_name             VARCHAR(100),
				 newspaper_publication_date DATE,
				 user_id                    INTEGER NOT NULL,
				 book_id                    INTEGER NOT NULL,
				 others                     VARCHAR(100),
				 PRIMARY KEY (knew_id),
				 FOREIGN KEY (book_id)
				                            REFERENCES books (book_id)
																		ON UPDATE NO ACTION,
				 FOREIGN KEY (user_id)
				                            REFERENCES users (user_id)
																		ON UPDATE NO ACTION);

-- DML : 知ったデータ
BEGIN TRANSACTION;
INSERT INTO knew (knew_id, new_books_guide_number, newspaper_name, newspaper_publication_date, user_id, book_id, others) VALUES (0001, 001, NULL, NULL, 000001, 0001, NULL);
INSERT INTO knew (knew_id, new_books_guide_number, newspaper_name, newspaper_publication_date, user_id, book_id, others) VALUES (0002, NULL, 'B新聞', NULL, 000002, 0002, NULL);
INSERT INTO knew (knew_id, new_books_guide_number, newspaper_name, newspaper_publication_date, user_id, book_id, others) VALUES (0003, NULL, NULL, '2020-08-01', 000003, 0003, NULL);
INSERT INTO knew (knew_id, new_books_guide_number, newspaper_name, newspaper_publication_date, user_id, book_id, others) VALUES (0004, NULL, NULL, NULL, 000004, 0004, '知人からの紹介');
INSERT INTO knew (knew_id, new_books_guide_number, newspaper_name, newspaper_publication_date, user_id, book_id, others) VALUES (0005, 002, NULL, NULL, 000005, 0005, NULL);
COMMIT;