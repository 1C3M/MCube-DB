USE mcube;
CREATE TABLE IF NOT EXISTS user (
    user_id VARCHAR(20) NOT NULL,
    email VARCHAR(30) NOT NULL,
    name VARCHAR(50) NOT NULL,
    pw VARCHAR(255) NOT NULL,
    PRIMARY KEY(user_id)
);

CREATE TABLE IF NOT EXISTS images (
    uuid BINARY(16) NOT NULL,
    user_id VARCHAR(20) NOT NULL,
    filename VARCHAR(255),
    PRIMARY KEY(uuid),
    FOREIGN KEY(user_id) REFERENCES user(user_id)
);

CREATE TABLE IF NOT EXISTS tokens (
    uuid BINARY(16) NOT NULL,
    user_id VARCHAR(20) NOT NULL,
    google VARCHAR(1000) NOT NULL,
    PRIMARY KEY(uuid),
    FOREIGN KEY(user_id) REFERENCES user(user_id)
);
