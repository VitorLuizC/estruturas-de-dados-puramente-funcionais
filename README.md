# Estruturas de Dados Puramente Funcionais

Anotações, pesquisas, experimentos e exercícios do curso de Estrutura de Dados Puramente Funcionais da UFABC, realizado nos dias 23/11, 30/11 e 07/12 de 2019.

http://pesquisa.ufabc.edu.br/haskell/cursos/19.q3.eds_funcionais/

## Motivações

A maior parte dos livros de algorítmos, cursos de graduação ensinam a implementar estruturas de dados de forma imperativa. Então é muito difícil se basear nessas implementações ao usar linguagens de programação funcionais.

> Um dos poucos livros de estruturas de dados puramente funcionais, é o "Purely Functional Data Structures" do Chris Okasaki, que é o texto principal usado no curso.

Isso acontece devido a diversos motivos, entre eles:

- Linguagens de programação funcional são pouco utilizadas e pouco conhecidas, e em linguagens multi-paradígma as estruturas de dados acabam sendo implementadas de forma imperativa mesmo em _code bases_ e contextos onde a programação funcional é mais usada.

- Os princípios e características da programação funcional, como imutabilidade, persistência, transparência referencial e avaliação preguiçosa impossibilitam as implementações clássicas (imperativas) das estruturas de dados.

- Não há ganho de performance ao implementar estruturas de dados de forma imperativa ou puramente funcional. Isso porque **o cálculo lambda e a máquina de Turing são equivalentes em poder computacional**.
