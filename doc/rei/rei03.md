# C3 : Esquema conceptual

## Modelo E/A

### Entidades Tipo:

- HOTEL(<ins>nome</ins>, localização, nEstrelas, contacto, lotacaoHospedes)

Um hotel normalmente possui um nome, um local onde está localizado, o número de estrelas que determina a qualidade do hotel, um contacto e uma lotação máxima de hóspedes tendo em conta o tamanho do mesmo.

- HOSPEDE(nome, <ins>nTelefone</ins>, nCC, email)

Um hóspede possui sempre um nome, várias maneiras de contactá-lo como um número de telefone e e-mail e também possui um documento que o identifica tal como o cartão do cidadão.

- QUARTO(<ins>nQuarto</ins>, tipoQuarto, preço)

Um quarto de hotel dispõe de um preço, de um tipo de quarto, ou seja, se é single, casal, familiar ou suite, um preço dependendo do tipo e um número associado a ele.

- FUNCIONARIO(<ins>nFuncionario</ins>, nome, nCC, ocupação, tipoContrato, efetividade)

Um funcionário de hotel possui um nome, um número de identificação (cartão do cidadão), uma ocupação, ou seja, se é chefe, cozinheiro, limpezas, etc. O funcionário também tem um tipo de contrato (efetivo ou temporário) e uma efetividade.

- RESERVA(<ins>nReserva</ins>, nQuarto, tipoEstadia, tipoDiaDaSemana, preço)

Uma reserva num hotél implica reservar um quarto e escolher o tipo de estadia que deseja, que vai dar a um determinado preço.

### Associações:

- RESERVA(HOSPEDE, QUARTO) 1:N total/parcial

Um hóspede pode reservar um quarto antes de chegar ao hotel.

- trabalhaPara(FUNCIONARIO, HOTEL) 1:1 parcial/total

Um funcionário trabalha para um hotel. 

- DIRIGE(FUNCIONARIO, HOTEL) 1:1 parcial/total

Um funcionário cuja a sua ocupação seja gestor dirige o hotel a que está associado.

- FAZ(FUNCIONARIO, RESERVA) 1:N parcial/total

Um funcionário insere no sistema a reserva que o hóspede necessita.

### Modelo Entidade-Associação:

Exemplo de inserção de uma imagem:   
![An alternative description](images/image02.png)   

Always add a description to help the user understand the figure 

NOTA: Cada entidade-tipo e cada associação devem ter um pequeno texto – um ou dois parágrafos – para descrever esse elemento do modelo e os seus atributos)

## Regras de negócio adicionais (Restrições)
_(Apresentar uma lista detalhada das regras e restrições não possíveis de representar no modelo E/A, que visam a manutenção da consistência e integridade da modelação do problema)_

---
[< Previous](rei02.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | Next >
:--- | :---: | ---: 
