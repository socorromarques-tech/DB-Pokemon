INSERT INTO tbl_collections (colletionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

INSERT INTO tbl_types (typeName)
VALUES
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting'),
('Colorless');

INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, resis, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'Metal', '1',
 58, 1, 4, 1),

(120, 'Charizard', 'Flame Pokémon', 'Fire Spin', '100', 'Water', 'Fighting', '3',
 4, 1, 1, 3),

(60, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '20', 'Electric', 'None', '1',
 7, 1, 2, 1),

(80, 'Wartortle', 'Turtle Pokémon', 'Water Gun', '40', 'Electric', 'None', '1',
 42, 1, 2, 2),

(100, 'Blastoise', 'Shellfish Pokémon', 'Hydro Pump', '60', 'Electric', 'None', '3',
 2, 1, 2, 3),

(50, 'Bulbasaur', 'Seed Pokémon', 'Leech Seed', '20', 'Fire', 'Water', '1',
 44, 1, 3, 1),

(70, 'Ivysaur', 'Seed Pokémon', 'Vine Whip', '30', 'Fire', 'Water', '2',
 30, 1, 3, 2),

(100, 'Venusaur', 'Seed Pokémon', 'Solar Beam', '60', 'Fire', 'Water', '3',
 15, 1, 3, 3),

(70, 'Eevee', 'Evolution Pokémon', 'Quick Attack', '20', 'Fighting', 'None', '1',
 51, 2, 7, 1),

(90, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', 'Psychic', '4',
 11, 2, 7, 1);
