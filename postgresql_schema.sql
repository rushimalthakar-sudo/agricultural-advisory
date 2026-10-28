CREATE TABLE crops (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(150),
    description VARCHAR(500)
);

CREATE TABLE soil_profiles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nitrogen DECIMAL(8,2),
    phosphorus DECIMAL(8,2),
    potassium DECIMAL(8,2),
    ph DECIMAL(4,2),
    organic_matter DECIMAL(5,2),
    texture VARCHAR(100)
);

CREATE TABLE fertilizers (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    nitrogen_content DECIMAL(5,2),
    phosphorus_content DECIMAL(5,2),
    potassium_content DECIMAL(5,2),
    crop_id BIGINT,
    CONSTRAINT fk_fertilizer_crop
        FOREIGN KEY (crop_id) REFERENCES crops(id)
);