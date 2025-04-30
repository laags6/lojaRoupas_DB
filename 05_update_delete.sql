USE lojaRoupas;

-- Deletando clientes (5 scripts)
DELETE FROM clientes WHERE CPF = '111.111.111-11';
DELETE FROM clientes WHERE email = 'mariana.costa@email.com';
DELETE FROM clientes WHERE nome LIKE 'Ricardo%';
DELETE FROM clientes WHERE sexo = 'F' AND YEAR(dataNasc) = 1995;
DELETE FROM clientes WHERE telefone LIKE '(51)%';

-- Deletando funcionários (5 scripts)
DELETE FROM funcionarios WHERE CPF = '111.222.333-44';
DELETE FROM funcionarios WHERE salario < 3600;
DELETE FROM funcionarios WHERE departamento = 'Marketing'; 
DELETE FROM funcionarios WHERE YEAR(dataAdm) = 2019;
DELETE FROM funcionarios WHERE nome LIKE '%Oliveira';

-- Deletando um pedido específico
DELETE FROM pedidos WHERE idPedidos = 1;
-- Atualizando informações de clientes (5 scripts)
UPDATE clientes SET telefone = '(11) 99876-5432' WHERE CPF = '222.222.222-22';
UPDATE clientes SET nomeSocial = 'Carlinhos' WHERE nome = 'Carlos Rocha';
UPDATE clientes SET email = 'paulo.f@outroemail.com' WHERE nome LIKE 'Paulo%';
UPDATE clientes SET enderecoCli = 'Rua da Praia, 123' WHERE CPF = '888.888.888-88'; 
UPDATE clientes SET nome = 'Roberta Almeida Lima' WHERE CPF = '000.000.000-00';

-- Atualizando informações de funcionários (5 scripts)
UPDATE funcionarios SET salario = salario * 1.10 WHERE departamento = 'Comercial'; 
UPDATE funcionarios SET email = 'jose.a@novomail.com' WHERE nome = 'José Almeida';
UPDATE funcionarios SET dataDem = NOW() WHERE CPF = '000.111.222-33'; 
UPDATE funcionarios SET cargaHora = 42 WHERE nome LIKE 'Patrícia%';
UPDATE funcionarios SET comissao = 900.00 WHERE CPF = '111.222.333-44';

-- Atualizando o status de um pedido
UPDATE pedidos SET statusPedido = 'Cancelado' WHERE idPedidos = 3;

-- Diminuindo a quantidade disponível de um produto no estoque
UPDATE estoque SET qtdDisponivel = qtdDisponivel - 5 WHERE id_produto = 1;

-- Atualizando o preço de um produto
UPDATE produto SET preco = 319.99 WHERE idProduto = 1;