# C1 : Introdução


## Descrição do trabalho

O trabalho consiste na especificação e desenvolvimento de um sistema de bases de dados de agendamento de uma companhia de hotéis. Esta companhia de hotéis dispõem de vários hotéis em diferentes países. Em cada país existem 3 hotéis, sendo que cada um deles irá ter o seu respetivo nome, localização, números de estrelas, número de quartos e contacto/e-mail/rua. Estes hotéis tem todos uma lotação máxima de hóspedes.
Os hóspedes, acompanhados com o seu nome, número de telefone, número de C.C. e e-mail podem reservar quartos por um determinado valor. Esse valor é alterado dependendo das alturas do ano (época alta e baixa) e dos tipos de quarto que o hóspede selecionar, como por exemplo, single, casal, familiar e suite. O valor pode alternar conforme se é fim de semana ou dia da semana. Também é dada a opção de escolher três tipos diferentes de estadia, sendo estes: 

- SA: só alojamento;
- APA: alojamento e pequeno almoço;
- MP: meia pensão, ou seja, pequeno-almoço e jantar;
- PC: pensão completa, ou todas as refeições;
- TI: tudo incluído;
- HM: primeiro dia só alojamento, segundo dia meia pensão e terceiro dia pequeno-almoço.

O hóspede também pode reservar quartos.
Cada hotel dispõe de um certo número de funcionários, cada um deles com o número de funcionário, nome, número de C.C., ocupação, tipo de contrato e efetividade.
Nesta base de dados, temos como objetivo estabelecer um certo nível de simplicidade, não só para ser de fácil organização, como de manuseamento simples.

## Modelação do problema

- Uma companhia de hotéis está presente em vários países. Cada país tem três hotéis,cada um com o seu respetivo nome, localização, número de estrelas e contacto;
- Cada um desses hotéis está limitado a um certo número de hóspedes (lotação máxima);
- Cada um dos hóspedes têm um nome, número de telefone, número de C.C., e-mail e está associado a um respetivo quarto;
- Existem vários tipos de quarto tal como single, casal, familiar e suite, cada um com o seu valor diferente;
- Cada hótel tem um número de funcionários;
- Cada um desses funcionários têm um número de funcionário, nome, número de C.C., ocupação, tipo de contrato e efetividade;
- A estadia pode ser meia pensão, pensão completa e tudo incluído.



---
[< Previous](rei00.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | [Next >](rei02.md)
:--- | :---: | ---: 
