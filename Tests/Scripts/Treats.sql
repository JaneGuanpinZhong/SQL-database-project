CREATE TABLE Treats (
  ICD_10_PCS varchar(256) NOT NULL,
  PID int NOT NULL,
  Date_time DATETIME NOT NULL,
  PRIMARY KEY (ICD_10_PCS, Date_time),
  UNIQUE(PID),
  FOREIGN KEY (ICD_10_PCS) REFERENCES Treatment(ICD_10_PCS),
  FOREIGN KEY (PID) REFERENCES Patient(PID)
);
