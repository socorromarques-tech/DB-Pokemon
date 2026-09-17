--  Inserir carta com validação
CREATE OR REPLACE FUNCTION add_card(
    p_name VARCHAR,
    p_hp INTEGER,
    p_info TEXT,
    p_attack VARCHAR,
    p_damage VARCHAR,
    p_weak VARCHAR,
    p_resis VARCHAR,
    p_retreat INTEGER,
    p_cardNumber INTEGER,
    p_collection INTEGER,
    p_type INTEGER,
    p_stage INTEGER
)
RETURNS VOID AS $$
BEGIN
    INSERT INTO tbl_cards (
        name, hp, info, attack, damage, weak, resis, retreat,
        cardNumberInCollection, collection_id, type_id, stage_id
    )
    VALUES (
        p_name, p_hp, p_info, p_attack, p_damage, p_weak, p_resis, p_retreat,
        p_cardNumber, p_collection, p_type, p_stage
    );
END;
$$ LANGUAGE plpgsql;

-- Atualizar total de cartas da coleção
CREATE OR REPLACE FUNCTION update_collection_count()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE tbl_collections
    SET totalCardsInCollection = (
        SELECT COUNT(*) FROM tbl_cards WHERE collection_id = NEW.collection_id
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_collection_count
AFTER INSERT ON tbl_cards
FOR EACH ROW EXECUTE FUNCTION update_collection_count();

-- Buscar cartas por tipo
CREATE OR REPLACE FUNCTION get_cards_by_type(p_type INTEGER)
RETURNS TABLE (
    card_id INTEGER,
    card_name VARCHAR,
    hp INTEGER,
    attack VARCHAR,
    damage VARCHAR
) AS $$
BEGIN
    RETURN QUERY
    SELECT c.id, c.name, c.hp, c.attack, c.damage
    FROM tbl_cards c
    WHERE c.type_id = p_type;
END;
$$ LANGUAGE plpgsql;
