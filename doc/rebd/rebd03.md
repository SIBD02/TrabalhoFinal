# C3 : Normalização

## Relações

- Hotel (<ins>nome</ins>, localização, nEstrelas, lotacaoHospedes, #nFuncionario -> funcionario, #nTelefone -> hospede)
Contacto_Hotel (#nome -> hotel, contacto)

- Funcionario (<ins>nFuncionario</ins>, nome, nCC, ocupação, tipoContrato, efetividade)

- Reserva (<ins>nReserva</ins>, tipoEstadia, tipoDiaDaSemana, preço, #nFuncionario -> funcionario)

- Reserva_Quarto (<ins>#nReserva</ins> -> reserva, nQuarto)

- Hospede (<ins>nTelefone</ins>, nome, email, nCC)

- Quarto (<ins>nQuarto</ins>, tipoQuarto, preço, #nTelefone -> hospede)

## Normalização do Esquema Relacional

### Funcionario (<ins>nFuncionario</ins>, nome, nCC, ocupação, tipoContrato, efetividade)

(DF1) nFuncionario -> nome, nCC
(DF2) ocupação -> tipoContrato, efetividade

#### 1NF

Funcionario (<ins>nFuncionario</ins>, nome, nCC, <ins>ocupação</ins>, tipoContrato, efetividade)

Chaves candidatas: (nFuncionario, ocupação)

#### 2NF

Funcionario (<ins>#nFuncionario</ins> -> Dados_Funcionario, <ins>#ocupação</ins> -> Contrato_Funcionario)

Chaves candidatas: (nFuncionario, ocupação)

Dados_Funcionario (<ins>nFuncionario</ins>, nome, nCC)

Chaves candidatas: (nFuncionario)

Contrato_Funcionario (<ins>ocupação</ins>, tipoContrato, efetividade)

Chaves candidatas: (ocupação)

Já se encontra normalizado em 3NF e BCNF.

### Quarto (nQuarto, tipoQuarto, preço, #nTelefone -> hospede)

(DF1) nQuarto -> tipoQuarto, preço

#### 1NF

Quarto (<ins>nQuarto</ins>, tipoQuarto, preço, #nTelefone</ins> -> hospede)

Chaves candidatas: (nQuarto, nTelefone)

#### 2NF

Quarto(<ins>#nQuarto</ins> -> Dados_Quarto, #nTelefone</ins> -> hospede)

Chaves Candidatas: (nQuarto, nTelefone)

Dados_Quarto (<ins>nQuarto</ins>, tipoQuarto, preço)

Chaves Candidatas: (nQuarto)

Hospede (<ins>nTelefone</ins>, nome, email, nCC)

Chaves Candidatas: (nTelefone)

Já se encontra normalizado em 3NF e BCNF.

### Assim, todas as relações encontram-se normalizadas e portanto no final ficam:

- Hotel (<ins>nome</ins>, localização, nEstrelas, lotacaoHospedes, <ins>#nFuncionario</ins> -> funcionario, <ins>#nTelefone</ins> -> hospede)

- Contacto_Hotel (<ins>#nome</ins> -> hotel, contacto)

- Funcionario (<ins>#nFuncionario</ins> -> Dados_Funcionario, <ins>#ocupação</ins> -> Contrato_Funcionario)

- Dados_Funcionario (<ins>nFuncionario</ins>, nome, nCC)

- Contrato_Funcionario (<ins>ocupação</ins>, tipoContrato, efetividade)

- Reserva (<ins>nReserva</ins>, tipoEstadia, tipoDiaDaSemana, preço, <ins>#nFuncionario</ins> -> funcionario)

- Reserva_Quarto (<ins>#nReserva</ins> -> reserva, nQuarto)

- Hospede (<ins>nTelefone</ins>, nome, email, nCC)

- Quarto(<ins>#nQuart</ins>o -> Dados_Quarto, <ins>#nTelefone</ins> -> hospede)

- Dados_Quarto (<ins>nQuarto</ins>, tipoQuarto, preço)


---
[< Previous](rebd02.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | [Next >](rebd04.md)
:--- | :---: | ---: 
