SELECT valor FROM lancamentos;

--------------------------------------------------------------

SELECT c.tipo, SUM(l.valor) AS total
FROM lancamentos l
JOIN categorias c
    ON l.id_categoria = c.id_categoria
GROUP BY c.tipo;

--------------------------------------------------------------

SELECT u.nome_unidade, SUM(l.valor) AS total
FROM lancamentos l
JOIN unidades u
    ON l.id_unidade = u.id_unidade
GROUP BY u.nome_unidade;

--------------------------------------------------------------

SELECT 
    u.nome_unidade,
    c.tipo,
    SUM(l.valor) AS total
FROM lancamentos l 
JOIN unidades u
    ON l.id_unidade = u.id_unidade
JOIN categorias c
    ON l.id_categoria = c.id_categoria
GROUP BY u.nome_unidade, c.tipo
ORDER BY u.nome_unidade;

---------------------------------------------------------------

SELECT 
    u.nome_unidade, 
    SUM(l.valor) AS total_pendente
FROM lancamentos l 
JOIN unidades u
    ON l.id_unidade = u.id_unidade
JOIN categorias c
    ON l.id_categoria = c.id_categoria
WHERE l.status = 'pendente'
  AND c.tipo = 'despesa'
GROUP BY u.nome_unidade;

--------------------------------------------------------------

SELECT 
    l.descricao,
    l.valor
FROM lancamentos l
JOIN categorias c
    ON l.id_categoria = c.id_categoria
WHERE c.tipo = 'despesa'
ORDER BY l.valor DESC
LIMIT 3;

