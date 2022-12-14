-- DDL : 連絡先テーブル
CREATE TABLE contact_address
        (contact_address_id   INTEGER NOT NULL,
				 telephone_number     VARCHAR(100),
				 contact_method_id    INTEGER NOT NULL,
				 user_id              INTEGER NOT NULL,
				 PRIMARY KEY (contact_address_id),
				 FOREIGN KEY (user_id)
				                      REFERENCES users (user_id)
															ON UPDATE NO ACTION,
				 FOREIGN KEY (contact_method_id)
				                      REFERENCES contact_method (contact_method_id)
															ON UPDATE NO ACTION);

-- DML : 連絡先データ
BEGIN TRANSACTION;
INSERT INTO contact_address (contact_address_id, telephone_number, contact_method_id, user_id) VALUES (000001, '080-000-0001', 01, 000001);
INSERT INTO contact_address (contact_address_id, telephone_number, contact_method_id, user_id) VALUES (000002, '080-000-0002', 02, 000002);
INSERT INTO contact_address (contact_address_id, telephone_number, contact_method_id, user_id) VALUES (000003, '080-000-0003', 03, 000003);
INSERT INTO contact_address (contact_address_id, telephone_number, contact_method_id, user_id) VALUES (000004, '080-000-0004', 04, 000004);
INSERT INTO contact_address (contact_address_id, telephone_number, contact_method_id, user_id) VALUES (000005, '080-000-0005', 05, 000005);
COMMIT;