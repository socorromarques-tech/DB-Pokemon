📝 Banco de Dados Pokémon TCG (PostgreSQL)

    Banco de dados relacional para gerenciamento de cartas do Pokémon TCG, desenvolvido com boas práticas de engenharia de dados e suporte de IA.

🎯 Sobre o Projeto

Este repositório contém a implementação de um banco de dados relacional criado como parte do Bootcamp DIO / Bradesco — Dados, Cibersegurança, GenAI e Python.

O escopo original exigia a criação de tabelas, Foreign Keys e seeds iniciais. Esse processo de estruturação foi construído a partir de prompts direcionados utilizando o Chat Copilot da Microsoft.

Decidi expandir o projeto além do exigido para demonstrar autonomia e boas práticas, adicionando Índices, Constraints, Views e Stored Procedures.
📦 Tecnologias

    PostgreSQL & VS Code

    Chat Copilot / Microsoft (Apoio na estruturação e seeds)

    SQL (DDL, DML, Views, Procedures, Constraints)

    Git & GitHub

🧱 Modelagem e Estrutura

    tbl_collections: Coleções do TCG (com exclusão em cascata).

    tbl_types: Tipos elementares dos Pokémon.

    tbl_stages: Estágios de evolução.

    tbl_cards: Tabela principal de cartas, vinculada às demais via Chaves Estrangeiras (FK).

Foram gerados 3 coleções, 7 tipos, 3 estágios e 50 cartas como massa de dados inicial (seed).
⚙️ Diferenciais Implementados (Além do Escopo)

    Índices Estratégicos: Otimização de busca em colunas frequentes.

    Constraints de Integridade: Validações para evitar duplicidade de numeração por coleção (UNIQUE).

    Views: Simplificação de consultas complexas e junções (JOINs).

    Stored Procedures: Automação de rotinas no banco de dados.

🔍 Exemplos de Consultas Úteis
SQL

-- Buscar cartas completas através da View
SELECT * FROM vw_cards_full;

-- Filtrar cartas por tipo específico
SELECT * FROM vw_cards_by_type WHERE typeName = 'Fire';

-- Consulta com JOIN manual
SELECT c.name, t.typeName, s.stageName 
FROM tbl_cards c
JOIN tbl_types t ON c.type_id = t.id
JOIN tbl_stages s ON c.stage_id = s.id;

🚀 Como Executar

    Clone o repositório:
    Bash

    git clone https://github.com/socorromarques-tech/DB-Pokemon-tcg-postgresql-.git

    Abra o projeto no seu editor e execute os scripts no PostgreSQL na ordem:

        Estruturação (DDL)

        Inserção de Dados (Seeds)

        Funcionalidades Extras (Views, Índices e Procedures)

👤 Autor

Desenvolvido por Socorro Marques — Viseu / Portugal.

Projeto do Bootcamp DIO / Bradesco — Dados, Cibersegurança, GenAI e Python.
📎 Licença

Uso educacional e para demonstração em portfólio.
