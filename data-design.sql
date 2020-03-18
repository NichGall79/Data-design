use ngallegos61;
ALTER DATABASE ngallegos61 CHARACTER SET utf8 COLLATE utf8_unicode_ci;


CREATE TABLE user(
	userId BINARY(16) NOT NULL,
	userEmail VARCHAR(128) NOT NULL,
	userHash CHAR(97) NOT NULL,
	userName VARCHAR(32) NOT NULL,
	userPaymentInfo CHAR(32),
	UNIQUE(userEmail),
	UNIQUE(userName),
	INDEX(userEmail),
	PRIMARY KEY(userId)
);

CREATE TABLE product(
	productId BINARY(16) NOT NULL,
	productName VARCHAR(32) NOT NULL,
	productBrand VARCHAR(128) NOT NULL,
	productPrice VARCHAR(32) NOT NULL,
	UNIQUE (productId),
	UNIQUE (productBrand),
	INDEX (productName),
	PRIMARY KEY(productId)
);

CREATE TABLE cart(
	cartUserId BINARY (16) NOT NULL,
	cartItemId BINARY (16) NOT NULL,
	cartBidding BINARY (16) NOT NULL,
	PRIMARY KEY (cartUserId),
	FOREIGN KEY (cartItemId) REFERENCES user(userId),
	FOREIGN KEY (cartBidding) REFERENCES product(productPrice)
);