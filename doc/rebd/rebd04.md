# C4 : Esquema Relacional  <!-- omit in toc -->
_(Apresentar o esquema físico da Base de Dados. Para cada relação resultante, apresente a descrição da tabela correspondente usando o exemplo apresentado.)_

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

## Vistas

_(Inserir a descrição e estrutura das vista, caso existam.)_

---
| [< Previous](rebd03.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | [Next >](rebd05.md) |
| :---------------------- | :------------------------------------------------------: | ------------------: |
