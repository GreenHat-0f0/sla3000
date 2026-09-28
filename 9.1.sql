-- Exercícios com INSERT
-- ---------------------
-- 1. Insira um cliente chamado João da Silva, CPF 111.111.111-11, telefone 48991234567.
    INSERT INTO `cliente` (`nome`, `cpf`, `telefone`) VALUES ('João da Silva', '111.111.111-11', 48991234567); 

-- 2. Insira um cliente chamado Maria Oliveira, CPF 222.222.222-22, telefone 48997654321.
    INSERT INTO `cliente` (`nome`, `cpf`, `telefone`) VALUES ('Maria Oliveira', '222.222.222-22', 48997654321); 

-- 3. Cadastre o empregado Carlos Pereira, CPF 333.333.333-33, com cargo de "Analista de Sistemas".
    INSERT INTO `empregado` (`nome`, `cpf`, `cargo`) VALUES ('Carlos Pereira', '333.333.333-33', 'Analista de Sistemas'); 

-- 4. Cadastre o empregado Ana Souza, CPF 444.444.444-44, com cargo de "Gerente de Projetos".
    INSERT INTO `empregado` (`nome`, `cpf`, `cargo`) VALUES ('Ana Souza', '444.444.444-44', 'Gerente de Projetos'); 
-- 5. Insira um projeto chamado "Sistema de Vendas", descrição "Plataforma para e-commerce", preço 15000.00, data de fim 2025-12-01, data estimada 2025-11-15, solicitação em 2025-09-10, gerenciado pela funcionária 444.444.444-44 e para o cliente 111.111.111-11.

-- 6. Insira um projeto chamado "Aplicativo Financeiro", descrição "Gestão de despesas pessoais", preço 12000.00, data de fim 2025-10-30, data estimada 2025-10-20, solicitação em 2025-09-12, gerenciado por 444.444.444-44 e para o cliente 222.222.222-22.

-- 7. Cadastre a participação do empregado 333.333.333-33 no projeto 1 com 40 horas trabalhadas.

-- 8. Cadastre a participação do empregado 444.444.444-44 no projeto 1 com 20 horas trabalhadas.

-- 9. Cadastre a participação do empregado 333.333.333-33 no projeto 2 com 35 horas trabalhadas.

-- 10. Insira um cliente chamado Pedro Gomes, CPF 555.555.555-55, telefone 48999887766.

-- 11. Insira o empregado Lucas Andrade, CPF 666.666.666-66, cargo "Desenvolvedor Backend".

-- 12. Insira o projeto "Site Institucional", descrição "Página para empresa local", preço 5000.00, fim 2025-11-01, estimada 2025-10-25, solicitação em 2025-09-20, gerente 444.444.444-44, cliente 555.555.555-55.

-- 13. Cadastre a participação do empregado 666.666.666-66 no projeto 3 com 50 horas trabalhadas.

-- 14. Insira mais um cliente, CPF 777.777.777-77, nome "Fernanda Lima", telefone 48991231231.

-- 15. Insira o projeto "Controle de Estoque", descrição "Sistema para loja de roupas", preço 8000.00, fim 2025-12-20, estimada 2025-12-05, solicitação em 2025-09-25, gerente 444.444.444-44, cliente 777.777.777-77.

