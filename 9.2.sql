-- Nível Básico
-- 1 - UPDATE: O cliente 'João da Silva' (CPF '111.111.111-11') mudou de número de telefone. Atualize o telefone dele para 48998765432.
    UPDATE `cliente` 
    SET `telefone` = 48998765432 
    WHERE `cpf` = '111.111.111-11';

-- 2 - UPDATE: O empregado 'Carlos Pereira' (CPF '333.333.333-33') foi promovido. Atualize o cargo dele para 'Desenvolvedor Sênior'.
    UPDATE `empregado` 
    SET `cargo` = 'Desenvolvedor Sênior' 
    WHERE `cpf` = '333.333.333-33';

-- 3 - DELETE: O cliente 'Pedro Gomes' (CPF '555.555.555-55') encerrou o contrato com a empresa. Remova o registro dele da tabela cliente.
    DELETE FROM `cliente` 
    WHERE `cpf` = '555.555.555-55';

-- 4 - UPDATE: Aumente o preço de todos os projetos em 10%.
    UPDATE `projeto` 
    SET `preco` = `preco` * 1.10;

-- 5 - DELETE: A alocação do empregado 'Carlos Pereira' (CPF '333.333.333-33') no projeto de código 2 (codProj = 2) foi um erro. Exclua esse registro da tabela projEmp.
    DELETE FROM `projEmp` 
    WHERE `cpfEmpregado` = '333.333.333-33' AND `codProj` = 2;

-- Nível Intermediário
-- 6 - UPDATE: Para todos os projetos solicitados antes de '2025-09-15', atualize a descrição para 'PROJETO LEGADO - ' concatenado com a descrição original. (Ex: 'PROJETO LEGADO - Plataforma para e-commerce').
    UPDATE `projeto` 
    SET `descricao` = CONCAT('PROJETO LEGADO - ', `descricao`) 
    WHERE `dtSolicitacao` < '2025-09-15';

-- 7 - UPDATE: O empregado 'Lucas Andrade' (CPF '666.666.666-66') registrou 15 horas de trabalho a mais no projeto de código 3. Atualize o valor de hrTrab para o valor atual mais 15.
    UPDATE `projEmp` 
    SET `hrTrab` = `hrTrab` + 15 
    WHERE `cpfEmpregado` = '666.666.666-66' AND `codProj` = 3;

-- 8 - DELETE: Remova todos os projetos cujo preço seja inferior a R$ 6000,00.
    DELETE FROM `projeto` 
    WHERE `preco` < 6000.00;

-- 9 - UPDATE: A data estimada de entrega de todos os projetos gerenciados pela 'Ana Souza' (CPF '444.444.444-44') foi adiada em 7 dias. Atualize a coluna dtEstimada.
    UPDATE `projeto` 
    SET `dtEstimada` = DATE_ADD(`dtEstimada`, INTERVAL 7 DAY) 
    WHERE `cpfGerente` = '444.444.444-44';

-- 10 - DELETE: Um empregado com o CPF '999.999.999-99' foi cadastrado por engano e não está alocado em nenhum projeto. Delete-o da tabela empregado. (Este exercício pressupõe que você insira um registro para poder testar).
    INSERT INTO `empregado` (`cpf`, `nome`, `cargo`) 
    VALUES ('999.999.999-99', 'Empregado Teste', 'Estagiário');

-- Nível Avançado
-- 11 - UPDATE: O gerente de projetos mudou. Transfira a gerência de todos os projetos do cliente 'Maria Oliveira' (CPF '222.222.222-22') para o empregado 'Carlos Pereira' (CPF '333.333.333-33'). Atenção: Primeiro, você precisaria atualizar o cargo do 'Carlos Pereira' para 'Gerente de Projetos' para manter a consistência do modelo.
    UPDATE `empregado` 
    SET `cargo` = 'Gerente de Projetos' 
    WHERE `cpf` = '333.333.333-33';

    UPDATE `projeto` 
    SET `cpfGerente` = '333.333.333-33' 
    WHERE `cpfCliente` = '222.222.222-22';
-- 12 - DELETE: Exclua todos os projetos que já passaram da data de dtFim (data de finalização) e cujo cliente não seja 'João da Silva'.
    DELETE FROM `projeto` 
    WHERE `dtFim` < CURDATE() 
    AND `cpfCliente` <> (SELECT `cpf` FROM `cliente` WHERE `nome` = 'João da Silva');
