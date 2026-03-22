INSERT INTO unidades (nome_unidade, cidade)
VALUES
('Bessa', 'João Pessoa'),
('Bancários', 'João Pessoa');

INSERT INTO categorias (nome_categoria, tipo) VALUES ('Faturamento', 'receita'), ('Marketing', 'despesa'), ('Salários', 'despesa'), ('Energia', 'despesa'), ('Água', 'despesa'), ('Distratos', 'despesa'), ('Contador', 'despesa'), ('Audiência', 'despesa'), ('Compras', 'despesa'), ('Benefícios', 'despesa'), ('Manutenção', 'despesa');

INSERT INTO lancamentos (data_lancamento, descricao, valor, status, id_unidade, id_categoria)
VALUES
('2026-03-01', 'Faturamento mensal', 15000.00, 'pago', 1, 1),
('2026-03-02', 'Campanha Instagram', 500.00, 'pago', 1, 2),
('2026-03-03', 'Pagamento funcionários', 6000.00, 'pago', 1, 3),
('2026-03-04', 'Conta de energia', 800.00, 'pendente', 1, 4),
('2026-03-05', 'Conta de água', 300.00, 'pago', 2, 5),
('2026-03-06', 'Distrato cliente', 1200.00, 'pago', 2, 6),
('2026-03-07', 'Honorários contador', 900.00, 'pago', 2, 7),
('2026-03-08', 'Audiência jurídica', 700.00, 'pendente', 2, 8),
('2026-03-09', 'Compra de insumos', 1500.00, 'pago', 1, 9),
('2026-03-10', 'Benefícios equipe', 1200.00, 'pago', 1, 10),
('2026-03-11', 'Manutenção equipamento', 1000.00, 'pago', 2, 11);