-- 業務代行社テーブル
CREATE TABLE BusinessAgencyCompanys (
	            business_agency_companay_id     INTEGER NOT NULL,
						  company_name                    VARCHAR(100),
						  PRIMARY KEY (business_agency_companay_id)
);

-- 業務代行者テーブル
CREATE TABLE BusinessAgencyUsers (
	            business_agency_user_id         INTEGER NOT NULL,
						  business_agency_user_name       VARCHAR(100),
						  business_agency_companay_id     INTEGER NOT NULL,
						  PRIMARY KEY (business_agency_user_id),
						  FOREIGN KEY (business_agency_companay_id)
						                                  REFERENCES BusinessAgencyCompanys (business_agency_companay_id)
);

-- お客様テーブル
CREATE TABLE Users (
	            user_id                         INTEGER NOT NULL,
							user_number                     VARCHAR(100),
							user_name                       VARCHAR(100),
							PRIMARY KEY (user_id)
);

-- 検針テーブル
CREATE TABLE MeterReadings (
	            meter_reading_id                INTEGER NOT NULL,
							meter_reading_date              DATE,
							instructions_count              INTEGER,
							user_id                         INTEGER NOT NULL,
							business_agency_user_id         INTEGER NOT NULL,
							PRIMARY KEY (meter_reading_id),
							FOREIGN KEY (business_agency_user_id)
							                                REFERENCES BusinessAgencyUsers (business_agency_user_id),
							FOREIGN KEY (user_id)
							                                REFERENCES Users (user_id)
);

-- 料金表テーブル
CREATE TABLE PriceLists (
	            price_list_id                   INTEGER NOT NULL,
							price_list_name                 VARCHAR(100),
							min_amount_used                 INTEGER,
							max_amount_used                 INTEGER,
							PRIMARY KEY (price_list_id)
);

-- 単位料金テーブル
CREATE TABLE UnitPrices (
	            unit_price_id                   INTEGER NOT NULL,
							apply_date                      INTEGER,
							basic_price                     INTEGER,
							price_list_id                   INTEGER NOT NULL,
							unit_price                      INTEGER,
							PRIMARY KEY (unit_price_id),
							FOREIGN KEY (price_list_id)
							                                REFERENCES PriceLists (price_list_id)
);