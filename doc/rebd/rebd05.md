# C5 : SQL

## DDL

```sql
USE `test`;

DROP TABLE IF EXISTS `hotel`;
DROP TABLE IF EXISTS `contacto_hotel`;
DROP TABLE IF EXISTS `funcionario`;
DROP TABLE IF EXISTS `dados_funcionario`;
DROP TABLE IF EXISTS `contrato_funcionario`;
DROP TABLE IF EXISTS `reserva`;
DROP TABLE IF EXISTS `reserva_quarto`;
DROP TABLE IF EXISTS `hospede`;
DROP TABLE IF EXISTS `quarto`;
DROP TABLE IF EXISTS `dados_quarto`;

CREATE TABLE IF NOT EXISTS `hotel` (
	`nome` varchar(50) unsigned NOT NULL,
	`localização` varchar(50) unsigned NOT NULL,
	`nEstrelas` int unsigned NOT NULL,
	`lotacaoHospede` int unsigned NOT NULL,
	`nFuncionario` int unsigned NOT NULL AUTO_INCREMENT,
	`nTelefone` int(9) unsigned NOT NULL,
	PRIMARY KEY (`nome`)
);

CREATE TABLE IF NOT EXISTS `contacto_hotel` (
	`nome` varchar(50) unsigned NOT NULL,
	`contacto` int(9) unsigned NOT NULL,
	PRIMARY KEY (`nome`)
);

CREATE TABLE IF NOT EXISTS `funcionario` (
	`nFuncionario` int unsigned NOT NULL AUTO_INCREMENT,
	`ocupação` varchar(50) unsigned NOT NULL,
	PRIMARY KEY (`nFuncionario`, `ocupação`)
);

CREATE TABLE IF NOT EXISTS `dados_funcionario` (
	`nFuncionario` int unsigned NOT NULL AUTO_INCREMENT,
	`nome` varchar(50) unsigned NOT NULL,
	`nCC` int(8) unsigned NOT NULL,
	PRIMARY KEY (`nFuncionario`)
);

CREATE TABLE IF NOT EXISTS `contrato_funcionario` (
	`ocupação` varchar(50) unsigned NOT NULL,
	`tipoContrato` varchar(50) unsigned NOT NULL,
	`efetividade` boolean unsigned NOT NULL,
	PRIMARY KEY (`ocupação`)
);

CREATE TABLE IF NOT EXISTS `reserva` (
	`nReserva` int unsigned NOT NULL AUTO_INCREMENT,
	`tipoEstadia` varchar(50) unsigned NOT NULL,
	`tipoDiaDaSemana` boolean unsigned NOT NULL,
	`preço` decimal unsigned NOT NULL,
	`data` int unsigned NOT NULL,
	`nFuncionario` int unsigned NOT NULL,
        `nTelefone` int unsigned NOT NULL,
	`nQuarto` int unsigned NOT NULL,
	PRIMARY KEY (`nReserva`, `nFuncionario`, `nTelefone`, `nQuarto`)
);

CREATE TABLE IF NOT EXISTS `reserva_quarto` (
	`nReserva` int unsigned NOT NULL AUTO_INCREMENT,
	`nQuarto` int unsigned NOT NULL,
	PRIMARY KEY (`nReserva`)
);

CREATE TABLE IF NOT EXISTS `hospede` (
	`nTelefone` int unsigned NOT NULL,
	`nome` varchar(50) unsigned NOT NULL,
	`email` nvarchar(255) unsigned NOT NULL,
	`nCC` int unsigned NOT NULL,
	PRIMARY KEY (`nTelefone`)
);

CREATE TABLE IF NOT EXISTS `quarto` (
	`nQuarto` int unsigned NOT NULL,
	`nTelefone` int(9) unsigned NOT NULL,
	PRIMARY KEY (`nQuarto`, `nTelefone`)
);

CREATE TABLE IF NOT EXISTS `dados_quarto` (
	`nQuarto` int unsigned NOT NULL,
	`tipoQuarto` varchar(255) unsigned NOT NULL,
	`preço` decimal unsigned NOT NULL,
	PRIMARY KEY (`nQuarto`)
);
```

## DML

```sql
INSERT INTO hotel VALUES ('ARCHIPEGALOS Porto', 'Porto', 4, 200, 556677, 919999999) 
```
Este INSERT introduz os valores para um novo hotel na base de dados, incluindo o seu nome, localização, número de estrelas, lotação de hóspedes, número do funcionário associado com este hotel e o número de telefone dos hóspedes associados.

```sql
UPDATE contacto_hotel SET contacto = 916666666
```
Este update atualiza o contacto do hotel para um novo número.

```sql
INSERT INTO dados_funcionario VALUES (123456, 'Ricardo Morais', 98765432);
UPDATE dados_funcionarios SET nCC = 98765321 WHERE nome = 'Ricardo Morais'
```
Este INSERT insere os respetivos dados para um novo funcionário denomeado Ricardo Morais. De seguida, após hipoteticamente ser descoberto um erro na inserção do número de cartão do cidadão, realiza-se um UPDATE para atualizar o número para o correto.

```sql
INSERT into contracto_funcionario VALUES ('Gerente', 'Full time', 'Efetivo');
DELETE FROM contracto_funcionario WHERE tipoDeContrato = 'Full Time' AND efetividade = 'Efetivo'
```
Este INSERT insere na base de dados os valores do contrato de um funcionário. De seguida, realizamos um comando caso queiramos apagar todos os funcionários cujo contrato seja 'Full Time' e a sua efetividade 'Efetivo'.

```sql
INSERT into reserva VALUES (50, 'Meia pensão', 'Semana', 59,99€, 556677);
UPDATE reserva SET preço = 99,99€ WHERE tipoEstadia = 'Meia pensão');
UPDATE reserva SET tipoDiaDaSemana = 'Fim de Semana' WHERE preço >= 150,99€ AND tipoEstadia = 'Tudo incluído')
```
Este INSERT insere os valores relativos a uma reserva. De seguida, realizados um comando caso queiramos colocar o preço a um certo valor para uma respetiva estadia. Adicionalmente, quando o preço for maior que 150€ e a estadia do tipo 'Tudo incluído', o dia da semana passa a ser 'Fim de Semana'.

_(Apresentar exemplos dos pedidos SQL à base de dados que demonstrem o cumprimento dos requisitos identificados. Para cada query apresentar numa breve descrição do requisito que pretende resolver e do resultado espectável.)_

---
[< Previous](rebd04.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | Next >
:--- | :---: | ---: 
