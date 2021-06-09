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


## Descrição dos requisitos do utilizador

As opções disponíveis no sistema da companhia de hotéis dependerão do diferente nível de acesso que a pessoa tem. Vai existir um Escritório Geral que terá acesso a todos os dados disponibilizados pelos vários hotéis dos países. Dentro de cada país, existe um Gestor Nacional que terá acesso apenas aos dados relacionados com o seu país. Finalmente, dentro de cada respetivo hotel existe um ou vários Gestores de Hotel que terão total acesso aos dados do mesmo.

Assim, o Escritório Geral poderá ter acesso às seguintes funcionalidades:

- Toda a informação disponível em todos os hotéis dos três países.

O Gestor Nacional poderá ter acesso às seguintes funcionalidades:

- Toda a informação disponível de os três hotéis respetivos do seu país;

O Gestor de Hotel poderá ter acesso às seguintes funcionalidades:

- Número de hóspedes no hotel;
- Informação dos hóspedes;
- Toda a informação relacionada com os quartos;
- Toda a informação relacionada com funcionários.- Cada um desses funcionários têm um número de funcionário, nome, número de C.C., ocupação, tipo de contrato e efetividade;
- A estadia pode ser: SA, APA, MP, PC, TI E HM.

---
[< Previous](rebd00.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | [Next >](rebd02.md)
:--- | :---: | ---: 
