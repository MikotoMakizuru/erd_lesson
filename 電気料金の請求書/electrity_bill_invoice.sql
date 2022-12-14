-- 請求項目テーブル
CREATE TABLE StatementItems (
	            statement_item_id                INTEGER NOT NULL,
							statement_item_name              VARCHAR(100),
							PRIMARY KEY (statement_item_id)
);

-- 契約電流テーブル
CREATE TABLE ContractCurrents (
	            contract_current_id              INTEGER NOT NULL,
							contract_ampere                  VARCHAR(100),
							basic_price                      INTEGER,
							PRIMARY KEY (contract_current_id)
);

-- 契約種別テーブル
CREATE TABLE ContractCategorys (
	            contract_category_id              INTEGER NOT NULL,
							contract_category_name            VARCHAR(100),
							PRIMARY KEY (contract_category_id)
);

-- お客様テーブル
CREATE TABLE Users (
	            user_id                           INTEGER NOT NULL,
							user_number                       VARCHAR(100),
							user_name                         VARCHAR(100),
							area_number                       INTEGER,
							PRIMARY KEY (user_id)
);

-- 契約テーブル
CREATE TABLE Contracts (
	            contract_id                       INTEGER NOT NULL,
							user_id                           INTEGER NOT NULL,
							contract_category_id              INTEGER NOT NULL,
							contract_current_id               INTEGER NOT NULL,
							used_place                        VARCHAR(100),
							measuring_instrument_number       INTEGER,
							PRIMARY KEY (contract_id),
							FOREIGN KEY (contract_category_id)
							                                  REFERENCES ContractCategorys (contract_category_id),
							FOREIGN KEY (contract_current_id)
							                                  REFERENCES ContractCurrents (contract_current_id),
							FOREIGN KEY (user_id)
							                                  REFERENCES Users (user_id)
);

-- 検針テーブル
CREATE TABLE MeterReadings (
	            meter_reading_id                  INTEGER NOT NULL,
							meter_reading_date                DATE,
							instruction_count                 INTEGER,
							contract_id                       INTEGER NOT NULL,
							PRIMARY KEY (meter_reading_id),
							FOREIGN KEY (contract_id)
							                                  REFERENCES Contracts (contract_id)
);

-- 請求テーブル
CREATE TABLE Statements (
              statement_id                      INTEGER NOT NULL,
							meter_reading_id                  INTEGER NOT NULL,
							payment_deadline_date             DATE,
							PRIMARY KEY (statement_id),
							FOREIGN KEY (meter_reading_id)
							                                  REFERENCES MeterReadings (meter_reading_id)
);

-- 請求内訳テーブル
CREATE TABLE StatementDetails (
	            statement_detail_id               INTEGER NOT NULL,
							statement_id                      INTEGER NOT NULL,
							statement_item_id                 INTEGER NOT NULL,
							price                             INTEGER,
							PRIMARY KEY (statement_detail_id),
							FOREIGN KEY (statement_item_id)
							                                  REFERENCES StatementItems (statement_item_id),
							FOREIGN KEY (statement_id)
							                                  REFERENCES Statements (statement_id)
);