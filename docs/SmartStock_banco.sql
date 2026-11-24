-- SmartStock: modelo inicial do banco de dados (PostgreSQL)

CREATE TABLE produtos (
    id              SERIAL PRIMARY KEY,
    nome            VARCHAR(120) NOT NULL,
    categoria       VARCHAR(60),
    quantidade      INTEGER NOT NULL DEFAULT 0 CHECK (quantidade >= 0),
    estoque_minimo  INTEGER NOT NULL DEFAULT 0 CHECK (estoque_minimo >= 0),
    preco           NUMERIC(10,2) NOT NULL CHECK (preco >= 0),
    data_cadastro   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TYPE tipo_movimentacao AS ENUM ('Entrada', 'Saida');

CREATE TABLE movimentacoes (
    id          SERIAL PRIMARY KEY,
    produto_id  INTEGER NOT NULL REFERENCES produtos(id) ON DELETE CASCADE,
    tipo        tipo_movimentacao NOT NULL,
    quantidade  INTEGER NOT NULL CHECK (quantidade > 0),
    data        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_movimentacoes_produto ON movimentacoes(produto_id);
CREATE INDEX idx_movimentacoes_data ON movimentacoes(data);
