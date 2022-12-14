-- 患者テーブル
CREATE TABLE Users (
						 date_of_birth             DATE,
						 id                        INTEGER,
	           user_id                   INTEGER NOT NULL,
						 user_name                 VARCHAR(100),
						 PRIMARY KEY (user_id)
);

-- 受付テーブル
CREATE TABLE Receptions (
	           reception_id              INTEGER NOT NULL,
						 reception_date_and_time   TIMESTAMP,
						 teminal_number            INTEGER,
						 user_id                   INTEGER NOT NULL,
						 accounting_number         INTEGER,
						 PRIMARY KEY (reception_id),
						 FOREIGN KEY (user_id)
						                           REFERENCES Users (user_id)
);

-- 受診科テーブル
CREATE TABLE ClinicalDepartments (
	           clinical_department_id    INTEGER NOT NULL,
						 clinical_department_name  VARCHAR(100),
						 PRIMARY KEY (clinical_department_id)
);

-- 受診内容テーブル
CREATE TABLE MedicalTreatments (
	           medical_treatment_id      INTEGER NOT NULL,
						 medical_treatment_name    VARCHAR(100),
						 PRIMARY KEY (medical_treatment_id)
);

-- 医者テーブル
CREATE TABLE Doctors (
	           doctor_id                 INTEGER NOT NULL,
						 doctor_name               VARCHAR(100),
						 PRIMARY KEY (doctor_id)
);

-- 受付明細テーブル
CREATE TABLE ReceiptDetails (
	           reception_detail_id       INTEGER NOT NULL,
						 time                      TIMESTAMP,
						 reception_id              INTEGER NOT NULL,
						 clinical_department_id    INTEGER NOT NULL,
						 medical_treatment_id      INTEGER NOT NULL,
						 doctor_id                 INTEGER NOT NULL,
						 PRIMARY KEY (reception_detail_id),
						 FOREIGN KEY (doctor_id)
						                           REFERENCES Doctors (doctor_id),
						 FOREIGN KEY (medical_treatment_id)
						                           REFERENCES MedicalTreatments (medical_treatment_id),
						 FOREIGN KEY (clinical_department_id)
						                           REFERENCES ClinicalDepartments (clinical_department_id),
						 FOREIGN KEY (reception_id)
						                           REFERENCES Receptions (reception_id)
);