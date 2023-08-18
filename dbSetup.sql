CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

CREATE TABLE
    houses(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        sqft INT NOT NULL,
        bedrooms INT NOT NULL,
        bathrooms DOUBLE NOT NULL,
        imgUrl VARCHAR(1000) NOT NULL,
        price INT NOT NULL,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
    ) default charset utf8 COMMENT '';

INSERT INTO
    houses (
        sqft,
        bedrooms,
        bathrooms,
        imgUrl,
        price
    )
VALUES (
        10000,
        4,
        3.5,
        'https://www.google.com/aclk?sa=l&ai=DChcSEwiRn-3vxt-AAxX4zcIEHUkkBAsYABAFGgJwdg&ase=2&gclid=CjwKCAjwxOymBhAFEiwAnodBLAtBmMvUJd1GeYnFN5RRoWqUQMdy7SMZ-FeHxMKIjy3i36BNLrQedRoCMUQQAvD_BwE&sig=AOD64_0ZLhcHv91vWubrW1pG_tvREaT6fQ&ctype=5&nis=5&adurl&ved=2ahUKEwiT-d7vxt-AAxWHIzQIHZRRBuUQvhd6BAgBEH8',
        750000
    );