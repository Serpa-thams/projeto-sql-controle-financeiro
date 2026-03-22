CREATE TABLE unidades (
    id_unidade SERIAL PRIMARY KEY,
    nome_unidade VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);


CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL
);

CREATE TABLE lancamentos (
    id_lancamento SERIAL PRIMARY KEY,
    data_lancamento DATE NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor NUMERIC(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    id_unidade INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_unidade) REFERENCES unidades(id_unidade),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);