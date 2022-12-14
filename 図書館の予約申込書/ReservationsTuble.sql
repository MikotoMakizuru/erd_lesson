--DDL:本予約テーブル
CREATE TABLE reservations
        (reservations_id                  INTEGER NOT NULL,
				 application_date                 DATE,
				 transmission_book_name_propriety INTEGER,
				 nrn_division                     INTEGER,
	       contact_address_id               INTEGER NOT NULL,
				 book_id                          INTEGER NOT NULL,
				 library_id                       INTEGER NOT NULL,
				 PRIMARY KEY (reservations_id),
				 FOREIGN KEY (contact_address_id)
				                                  REFERENCES contact_address (contact_address_id)
																					ON UPDATE NO ACTION,
				 FOREIGN KEY (book_id)
				                                  REFERENCES books (book_id)
																					ON UPDATE NO ACTION,
				 FOREIGN KEY (library_id)
				                                  REFERENCES libraries (library_id)
																					ON UPDATE NO ACTION);

--DML:本予約データ
BEGIN TRANSACTION;
INSERT INTO reservations (reservations_id, application_date, transmission_book_name_propriety, nrn_division, contact_address_id, book_id, library_id) VALUES (000001, '2022-08-06', 01, 01, 000001, 0001, 0001);
INSERT INTO reservations (reservations_id, application_date, transmission_book_name_propriety, nrn_division, contact_address_id, book_id, library_id) VALUES (000002, '2022-08-05', 01, 01, 000002, 0002, 0002);
INSERT INTO reservations (reservations_id, application_date, transmission_book_name_propriety, nrn_division, contact_address_id, book_id, library_id) VALUES (000003, '2022-08-04', 01, 01, 000003, 0003, 0003);
INSERT INTO reservations (reservations_id, application_date, transmission_book_name_propriety, nrn_division, contact_address_id, book_id, library_id) VALUES (000004, '2022-08-03', 01, 01, 000004, 0004, 0004);
INSERT INTO reservations (reservations_id, application_date, transmission_book_name_propriety, nrn_division, contact_address_id, book_id, library_id) VALUES (000005, '2022-08-02', 02, 01, 000005, 0005, 0005);
COMMIT;