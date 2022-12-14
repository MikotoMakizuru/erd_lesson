-- DDL : 連絡方法テーブル
CREATE TABLE contact_method
        (contact_method_id     INTEGER NOT NULL,
				 contact_method_name   VARCHAR(100),
				 PRIMARY KEY (contact_method_id));

-- DML : 連絡方法データ
BEGIN TRANSACTION;
INSERT INTO contact_method (contact_method_id, contact_method_name) VALUES (01, '自宅TEL');
INSERT INTO contact_method (contact_method_id, contact_method_name) VALUES (02, '携帯');
INSERT INTO contact_method (contact_method_id, contact_method_name) VALUES (03, 'FAX');
INSERT INTO contact_method (contact_method_id, contact_method_name) VALUES (04, '勤務先TEL');
INSERT INTO contact_method (contact_method_id, contact_method_name) VALUES (05, '自宅TEL');
COMMIT;