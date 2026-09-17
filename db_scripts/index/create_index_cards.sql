CREATE INDEX idx_cards_name ON tbl_cards(name);
CREATE INDEX idx_cards_collection ON tbl_cards(collection_id);
CREATE INDEX idx_cards_type ON tbl_cards(type_id);
CREATE INDEX idx_cards_stage ON tbl_cards(stage_id);

CREATE INDEX idx_collections_name ON tbl_collections(colletionSetName);
CREATE INDEX idx_types_name ON tbl_types(typeName);
CREATE INDEX idx_stages_name ON tbl_stages(stageName);
