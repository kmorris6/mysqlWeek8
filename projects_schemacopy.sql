DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS project;

CREATE TABLE project(
    project_id INT /*AUTO INCREMENT*/ NOT NULL,
    project_name VARCHAR(128) NOT NULL,
    notes TEXT,
    diffculty INT, 
    estimated_hours decimal(7,2),
    actual_hours decimal(7,2)
);

CREATE TABLE material(
    material_id INT /*AUTO INCREMENT*/ NOT NULL,
    project_name VARCHAR(64) NOT NULL, 
    material_name VARCHAR(128), NOT NULL,
    num_required INT,
    cost decimal(7,2)
);

CREATE TABLE step(
    step_id INT /*AUTO INCREMENT*/ NOT NULL,
    project_id INT NOT NULL,
    step_text TEXT NOT NULL,
    step_order INT NOT NULL
);

CREATE TABLE category(
    category_id INT /*AUTO INCREMENT*/ NOT NULL,
    category_name VARCHAR(128)
);

CREATE TABLE project_category(
    project_id INT NOT NULL,
    category_id INT NOT NULL
);
