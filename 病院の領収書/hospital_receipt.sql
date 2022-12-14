-- 請求内容区分
CREATE TABLE BillingSummaryCategorys (
							billing_summary_category_id           INTEGER NOT NULL,
							billing_summary_category_name         VARCHAR(100),
							PRIMARY KEY (billing_summary_category_id)
);

-- 患者テーブル
CREATE TABLE Users (
							user_id                               INTEGER NOT NULL,
							user_number                           INTEGER,
							insurace_category                     VARCHAR(100),
							insurace_burben                       INTEGER,
							user_name                             VARCHAR(100),
							PRIMARY KEY (user_id)
);

-- 請求テーブル
CREATE TABLE PaymentRequests (
							payment_request_id                    INTEGER NOT NULL,
							outpatient_hospitalization_category   VARCHAR(20),
							billing_deabine_start_date            INTEGER,
							billing_deabine_end_date              INTEGER,
							user_id                               INTEGER NOT NULL,
							medical_expenses_total                INTEGER,
							tax_exempt_subject_total              INTEGER,
							taxation_total                        INTEGER,
							tax_included                          INTEGER,
							payment_request_total_amount          INTEGER,
							clinical_department                   VARCHAR(20),
							accounting_number                     INTEGER,
							dete_of_issue                         DATE,
							terminal_number                       INTEGER,
							note                                  VARCHAR(100),
							PRIMARY KEY (payment_request_id),
							FOREIGN KEY (user_id)
                                                    REFERENCES Users(user_id)
);

-- 請求内容テーブル
CREATE TABLE BillingSummaries (
              billing_summary_id                    INTEGER NOT NULL,
							billing_summary_name                  VARCHAR (100),
							billing_summary_category_id           INTEGER NOT NULL,
							PRIMARY KEY (billing_summary_id),
							FOREIGN KEY (billing_summary_category_id)
                                                    REFERENCES BillingSummaryCategorys (billing_summary_category_id) 
);

-- 請求明細テーブル
CREATE TABLE BillingStatements (
	            billing_statement_id                  INTEGER NOT NULL,
							points                                INTEGER,
							billing_summary_id                    INTEGER NOT NULL,
							payment_request_id                    INTEGER NOT NULL,
							ineurance_fee                         INTEGER,
							own_expense                           INTEGER,
							PRIMARY KEY (billing_statement_id),
							FOREIGN KEY (payment_request_id)
							                                      REFERENCES PaymentRequests (payment_request_id),
						  FOREIGN KEY (billing_summary_id)
							                                      REFERENCES BillingSummaries (billing_summary_id)
);