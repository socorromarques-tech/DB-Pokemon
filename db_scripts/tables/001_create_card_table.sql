CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    colletionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INTEGER NOT NULL
);

CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    typeName VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stageName VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INTEGER,
    name VARCHAR(100) NOT NULL,
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(50),
    weak VARCHAR(50),
    resis VARCHAR(50),
    retreat VARCHAR(50),
    cardNumberInCollection INTEGER,
    collection_id INTEGER NOT NULL,
    type_id INTEGER NOT NULL,
    stage_id INTEGER NOT NULL,
    FOREIGN KEY (collection_id) REFERENCES tbl_collections(id) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (type_id) REFERENCES tbl_types(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (stage_id) REFERENCES tbl_stages(id) ON UPDATE CASCADE ON DELETE RESTRICT
);
