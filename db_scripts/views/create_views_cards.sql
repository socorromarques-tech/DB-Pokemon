-- View completa das cartas
CREATE VIEW vw_cards_full AS
SELECT 
    c.id,
    c.name,
    c.hp,
    t.typeName,
    s.stageName,
    col.colletionSetName,
    c.attack,
    c.damage,
    c.weak,
    c.resis,
    c.retreat,
    c.cardNumberInCollection
FROM tbl_cards c
JOIN tbl_types t ON c.type_id = t.id
JOIN tbl_stages s ON c.stage_id = s.id
JOIN tbl_collections col ON c.collection_id = col.id;

-- View por coleção
CREATE VIEW vw_cards_by_collection AS
SELECT 
    col.colletionSetName,
    c.name,
    c.hp,
    c.attack,
    c.damage
FROM tbl_cards c
JOIN tbl_collections col ON c.collection_id = col.id;

-- View por tipo
CREATE VIEW vw_cards_by_type AS
SELECT 
    t.typeName,
    c.name,
    c.hp,
    c.attack,
    c.damage
FROM tbl_cards c
JOIN tbl_types t ON c.type_id = t.id;
