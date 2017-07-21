DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile (
	profileId INT UNSIGNED AUTO_INCREMENT NOT NULL,
	profileActivationToken CHAR(32),
	profileAtHandle VARCHAR(32) NOT NULL,
	profileEmail VARCHAR(128) NOT NULL,
	profileHash  CHAR(128) NOT NULL,
	profilePhone VARCHAR(32),
	profileSalt CHAR(64) NOT NULL,
	UNIQUE (profileEmail),
	UNIQUE (profileAtHandle),
	PRIMARY KEY (profileId)
);


CREATE TABLE item (
	itemId INT UNSIGNED AUTO_INCREMENT NOT NULL,
	itemProfileId INT UNSIGNED NOT NULL,
	itemSize VARCHAR(140) NOT NULL,
	itemDescription VARCHAR(140) NOT NULL,
	itemPricing VARCHAR(140) NOT NULL,
	FOREIGN KEY (itemprofileId) REFERENCES profile (profileId),
	PRIMARY KEY (itemId),
	UNIQUE (itemPricing),
	UNIQUE (itemSize)
);