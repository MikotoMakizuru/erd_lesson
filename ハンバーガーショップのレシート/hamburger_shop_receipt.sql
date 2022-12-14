-- 商品テーブル
CREATE TABLE Products (
	     product_id             INTEGER NOT NULL,
			 product_name           VARCHAR(100),
			 price                  INTEGER,
			 set_product_category   INTEGER,
			 PRIMARY KEY (product_id)
);

-- パッケージテーブル
CREATE TABLE Packages (
	     package_name           VARCHAR(100),
			 package_id             INTEGER NOT NULL,
			 PRIMARY KEY (package_id)
);

-- レジテーブル
CREATE TABLE CashRegisters (
	     cash_register_id       INTEGER NOT NULL,
			 cash_register_on       INTEGER,
			 PRIMARY KEY (cash_register_id)
);

-- 注文テーブル
CREATE TABLE Orders (
	     order_id               INTEGER NOT NULL,
			 package_id              INTEGER NOT NULL,
			 deta_and_time          TIMESTAMP,
			 cash_register_id       INTEGER NOT NULL,
			 total                  INTEGER,
			 consumption_tax        INTEGER,
			 PRIMARY KEY (order_id),
			 FOREIGN KEY (package_id)
			                    REFERENCES Packages (package_id),
			 FOREIGN KEY (cash_register_id)
			                    REFERENCES CashRegisters (cash_register_id)
);

-- 注文明細テーブル
CREATE TABLE OrderDetails (
	     order_details_id       INTEGER NOT NULL,
			 order_id               INTEGER NOT NULL,
			 product_id             INTEGER NOT NULL,
			 quantity               INTEGER,
			 PRIMARY KEY (order_details_id),
			 FOREIGN KEY (product_id)
			                        REFERENCES Products (product_id),
			 FOREIGN KEY (order_id)
			                        REFERENCES Orders (order_id)
);

-- お預かりテーブル
CREATE TABLE Custodies (
	     custody_id            INTEGER NOT NULL,
			 deposit               INTEGER,
			 order_id              INTEGER NOT NULL,
			 change                INTEGER,
			 PRIMARY KEY (custody_id),
			 FOREIGN KEY (order_id)
			                       REFERENCES Orders (order_id)
);

-- セット構成
CREATE TABLE SetConfigurstions (
	     set_configuration_id       INTEGER NOT NULL,
			 set_product_id             INTEGER NOT NULL,
			 configuration_product_id   INTEGER NOT NULL,
			 PRIMARY KEY (set_configuration_id),
			 FOREIGN KEY (configuration_product_id)
			                            REFERENCES Products (product_id),
			 FOREIGN KEY (set_product_id)
			                            REFERENCES Products (product_id)
);