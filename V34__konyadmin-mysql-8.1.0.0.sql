CREATE TABLE `USER_CONFIGURATION` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROP_NAME` varchar(255) NOT NULL,
  `PROP_VALUE` varchar(2000) NOT NULL,
  `GROUP_ID` varchar(30) NOT NULL ,
  `CREATED_BY` VARCHAR(255),	
  `CREATED_DATE` DATETIME,	
  `UPDATED_BY` VARCHAR(255),
  `UPDATED_DATE` DATETIME,
  CONSTRAINT PK_ID PRIMARY KEY (`ID`), 
  CONSTRAINT `UQ_PROP_NAME_GROUP` UNIQUE(`PROP_NAME`, `GROUP_ID`)
);