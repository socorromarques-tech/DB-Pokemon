-- Evita duplicação de número da carta dentro da mesma coleção
ALTER TABLE tbl_cards
ADD CONSTRAINT unique_card_number_per_collection
UNIQUE (collection_id, cardNumberInCollection);

--  Garantir valores válidos
ALTER TABLE tbl_cards
ADD CONSTRAINT chk_hp_positive CHECK (hp > 0);

ALTER TABLE tbl_cards
ADD CONSTRAINT chk_retreat_non_negative CHECK (retreat >= 0);

-- Garantir que nome não seja vazio
ALTER TABLE tbl_cards
ALTER COLUMN name SET NOT NULL;

