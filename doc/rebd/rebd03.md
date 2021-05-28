# C3 : Normalização

## Relações

Hotel (nome, localização, nEstrelas, lotacaoHospedes, #nFuncionario -> funcionario, #nTelefone -> hospede)
Contacto_Hotel (#nome -> hotel, contacto)

Funcionario (nFuncionario, nome, nCC, ocupação, tipoContrato, efetividade)

Reserva (nReserva, tipoEstadia, tipoDiaDaSemana, preço, #nFuncionario -> funcionario)

Reserva_Quarto (#nReserva -> reserva, nQuarto)

Hospede (nTelefone, nome, email, nCC)

Quarto (nQuarto, tipoQuarto, preço, #nTelefone -> hospede)


## Normalização do Esquema Relacional
_(Apresentar o estudo da normalização das relações obtidas na secção anterior. Desnormalizar se necessário.)_

---
[< Previous](rebd02.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | [Next >](rebd04.md)
:--- | :---: | ---: 
