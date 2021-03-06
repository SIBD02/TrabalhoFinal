# C4 : Esquema Relacional  <!-- omit in toc -->

- [Relações](#relações)
  - [Hotel](#hotel)
  - [Contacto_Hotel](#contacto_hotel)
  - [Funcionario](#funcionario)
  - [Dados_Funcionario](#dados_funcionario)
  - [Contrato_Funcionario](#contrato_funcionario)
  - [Reserva](#reserva)
  - [Reserva_Quarto](#reserva_quarto)
  - [Hospede](#hospede)
  - [Quarto](#quarto)
  - [Dados_Quarto](#dados_quarto)
- [Vistas](#vistas)

## Relações

### Hotel

#### DESCRIÇÃO <!-- omit in toc -->

Tabela sobre um hotel e todos os seus atributos.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nome       | Nome do hotel. | VARCHAR(50) | -           | Não    | Não         |
| localização     | Local onde o hotel se situa.  | VARCHAR(50)    | -        | Não        | Não  |
| nEstrelas     | As estrelas que o hotel possui. | INT | -        | Não        | Não  |
| lotacaoHospede | Lotação máxima de hóspedes. | INT        | -    | Não        | Não  |
| nFuncionario     | Número de funcionários associados ao hotel. | INT      | -        | Sim        | Não  |
| nTelefone    | Contacto telefónico. | INT(9)      | -        | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| Nome        |
| nFuncionario |
| nTelefone |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| Funcionario | nFuncionario      | Funcionario           | nFuncionario      | Não     |

### Contacto_Hotel

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui o contacto do respetivo hotel.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nome       | Nome do hotel | VARCHAR(50)    | -    | Não       | Não  |
| contacto   | Contacto do hotel  | INT(9)    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nome      |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| contacto | nome      | hotel            | nome                        | Não     |

### Funcionario

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação do funcionário.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nFuncionario       | Número do funcionário. | INT    | -    | Sim       | Não  |
| ocupação   | A ocupação (cargo) do funcionário.  | VARCHAR(50)    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nFuncionario      |
| ocupação      |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| Dados Funcionario | nFuncionario      | Dados_Funcionario          | Funcionario       | Não     |
| Ocupação | ocupação      | Contrato_Funcionario          | Funcionario       | Não     |

### Dados_Funcionario

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação do funcionário detalhada.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nFuncionario | Número do funcionário. | INT    | -    | Sim       | Não  |
| nome   | Nome do funcionário.  | VARCHAR(50)    | -    | Não        | Não  |
| nCC  | Número do funcionário.  | INT(8)    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nFuncionario      |

### Contrato_Funcionario

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação do contrato que o funcionário tem.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| ocupação | A ocupação (cargo) do funcionário. | VARCHAR(50)   | -    | Não       | Não  |
| tipoContrato   | Que tipo de contrato é.  | VARCHAR(50)    | -    | Não        | Não  |
| efetividade  | Que tipo de efetividade é.  | VARCHAR(50)    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| ocupação  |

### Reserva

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação da reserva em detalhe.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nReserva       | Número da reserva. | INT    | -    | Sim       | Não  |
| tipoEstadia   | Que tipo de estadia é.  | VARCHAR(50)    | -    | Não        | Não  |
| tipoDiaDaSemana   | Se é semana ou fim de semana.  | BOOLEAN   | -    | Não        | Não  |
| preço   | O preço.  | VARCHAR(50)    | -    | Não        | Não  |
| data   | A data.  | VARCHAR(50)    | -    | Não        | Não  |
| nFuncionario   | Funcionário associado com a reserva.  | INT    | -    | Não        | Não  |
| nTelefone  | Hospede associado com a reserva.  | INT    | -    | Não        | Não  |
| nQuarto   | Quarto associado com a reserva.  | INT    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nReserva |
| nFuncionario |
| nTelefone |
| nQuarto |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| Funcionario Reserva | nFuncionario      | Funcionario          | nFuncionario       | Não     |
| Hospede Reserva | nTelefone      | Hospede          | nTelefone       | Não     |
| Quarto Reserva | nQuarto      | Quarto          | nQuarto       | Não     |

### Reserva_Quarto

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação da reserva.
#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nReserva       | Número da reserva. | INT    | -    | Sim       | Não  |
| nQuarto   | Número do quarto. | INT    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nReserva     |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| Reserva Quarto | nReserva      | Reserva          | nReserva       | Não     |

### Hospede

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação da reserva em detalhe.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nTelefone   | Número de telefone do hospede. | INT    | -    | Não      | Não  |
| nome   | Nome do hospede.  | VARCHAR(50)    | -    | Não        | Não  |
| email   | E-mail do hospede.  | NVARCHAR(255)   | -    | Não        | Não  |
| nCC   | Número de cartão de cidadão do hospede..  | INT(8)    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nTelefone |

### Quarto

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação do quarto.

#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nQuarto       | Número do quarto.| INT    | -    | Não       | Não  |
| nTelefone   | Número de telefone do hospede associado ao quarto.  | INT(9)    | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nQuarto     |
| nTelefone     |

- **Referêncial** (chaves estrangeiras)*:

| Nome  | Coluna(s) | Tabela referênciada | Coluna(s) referênciada(s) | Indexar |
| ----- | --------- | ------------------- | ------------------------- | ------- |
| Número Quarto | nQuarto      | dados_quarto           | nQuarto     | Não     |
| Número Telefone | nTelefone      | hospede           | nTelefone     | Não     |

### Dados_Quarto

#### DESCRIÇÃO <!-- omit in toc -->

Tabela que inclui a informação detalhada de um respetivo quarto.
#### COLUNAS <!-- omit in toc -->

| Nome     | Descrição                 | Domínio     | por Omissão | Automático | Nulo |
| :------- | :------------------------ | :---------- | :---------- | :--------- | :--- |
| nQuarto       | Número do quarto. | INT    | -    | Não       | Não  |
| tipoQuarto   | Tipo do quarto. | VARCHAR(255)    | -    | Não        | Não  |
| preço   | Preço do quarto. | VARCHAR(50)   | -    | Não        | Não  |

#### RESTRIÇÕES DE INTEGRIDADE <!-- omit in toc -->

- **Chave Primária**: 

| Coluna(s) |
| --------- |
| nQuarto   |

## Vistas

```sql
CREATE VIEW Funcionarios AS
SELECT nFuncionario, nome
FROM dados_funcionario
```
Vista que permite ver os funcionários.

```sql
CREATE VIEW ReservasMeiaPensao AS
SELECT tipoEstadia, preço
FROM reserva
WHERE preço <= 50,99
```
Vista que permite ver as reservas apenas de meia de pensão.

```sql
CREATE VIEW Chefe AS
SELECT nFuncionario
FROM hotel
INNER JOIN (SELECT nFuncionario, ocupação FROM funcionario)
WHERE ocupação = 'Chefe'
```
Vista que permite ver os funcionários cuja ocupação é 'Chefe'.

---
| [< Previous](rebd03.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | [Next >](rebd05.md) |
| :---------------------- | :------------------------------------------------------: | ------------------: |
