# C3 : Esquema conceptual

## Modelo E/A

Entidades Tipo:

- HOTEL([nome], localização, nEstrelas, contacto, lotacaoHospedes)
Um hotel normalmente possui um nome, um local onde está localizado, o número de estrelas que determina a qualidade do hotel, um contacto e uma lotação máxima de hóspedes tendo em conta o tamanho do mesmo.

- HOSPEDE(nome, [nTelefone], nCC, email)
- QUARTO([nQuarto], tipoQuarto, preço)
- FUNCIONARIO([nFuncionario], nome, nCC, ocupação, tipoContrato, efetividade)
- RESERVA([nReserva], nQuarto, tipoEstadia, preço)

Associações:

- RESERVA(HOSPEDE, QUARTO) 1:N total/parcial 
- trabalhaPara(FUNCIONARIO, HOTEL) 1:1 parcial/total
- DIRIGE(FUNCIONARIO, HOTEL) 1:1 parcial/total
- FAZ(FUNCIONARIO, RESERVA) 1:N parcial/total

Modelo Entidade-Associação:

Exemplo de inserção de uma imagem:   
![An alternative description](images/image02.png)   

Always add a description to help the user understand the figure 

NOTA: Cada entidade-tipo e cada associação devem ter um pequeno texto – um ou dois parágrafos – para descrever esse elemento do modelo e os seus atributos)

## Regras de negócio adicionais (Restrições)
_(Apresentar uma lista detalhada das regras e restrições não possíveis de representar no modelo E/A, que visam a manutenção da consistência e integridade da modelação do problema)_

---
[< Previous](rei02.md) | [^ Main](https://github.com/exemploTrabalho/reportSIBD/) | Next >
:--- | :---: | ---: 
