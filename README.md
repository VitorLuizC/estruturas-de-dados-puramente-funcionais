# Estruturas de Dados Puramente Funcionais

Anotações, pesquisas, experimentos e exercícios do curso de Estrutura de Dados Puramente Funcionais da UFABC, realizado nos dias 23/11, 30/11 e 07/12 de 2019.

http://pesquisa.ufabc.edu.br/haskell/cursos/19.q3.eds_funcionais/

## Motivações

A maior parte dos livros de algorítmos, cursos de graduação ensinam a implementar Estruturas de Dados (EDs) de forma imperativa. Então é muito difícil se basear nessas implementações ao usar linguagens de programação funcionais.

> Um dos poucos livros de estruturas de dados puramente funcionais, é o "Purely Functional Data Structures" do Chris Okasaki, que é o texto principal usado no curso.

Isso acontece devido a diversos motivos, entre eles:

- Linguagens de programação funcional são pouco utilizadas e pouco conhecidas, e em linguagens multi-paradígma as EDs acabam sendo implementadas de forma imperativa mesmo em _code bases_ e contextos onde a programação funcional é mais usada.

  > Linguagens de programação funcional são tão antigas quanto as imperativas, porém históricamente seu desempenho era bastante inferior em relação as linguagens tradicionais. Isso mudou bastante com a evolução dos compiladores que fazem análises muito mais sofísticadas do código.

- Os princípios e características da programação funcional, como imutabilidade, persistência, transparência referencial e avaliação preguiçosa impossibilitam as implementações clássicas (imperativas) das EDs.

- Não há ganho de performance ao implementar EDs de forma imperativa ou puramente funcional. Isso porque **o cálculo lambda e a máquina de Turing são equivalentes em poder computacional**.

  > O hardware, com pequenas exceções, é implementado de forma imperativa. E até existem algumas pesquisas sobre implementações de hardware funcional, mas a implementação típica é mesmo a imperativa.

## Estruturas de Dados Efêmeras\* e Persistentes

As EDs, como quaisquer outros objetos, podem ser classificadas como efêmeras ou persistentes. Ou seja, se são mutáveis ou imutáveis, se existe apenas uma ou simultaneamente várias a partir das operações.

Também achei um [texto sobre o tema](https://www.cs.cmu.edu/~rwh/introsml/techniques/perseph.htm) onde o autor, Robert Harper, usa a quantidade de valores lógicos futuros como forma de categorizar objetos como persistentes ou efêmeros.

> Valores lógicos futuros seriam os resultados de operações com objetos que retornam objetos do um mesmo tipo.
>
> ```ts
> type X = ...;
>
> function operation (x: X): X { ... }
> ```

EDs puramente funcionais serão **sempre** persistentes, por causa do princípio da imutabilidade e da inexistência de atualizações destrutivas. Enquanto é possível implementar EDs efêmeras ou persistentes de forma imperativo, mas as mais usadas são efêmeras.

### Estruturas de Dados Efêmeras

São EDs mutáveis, ou seja, podem ser modificadas e suas operações geralmente modificam sua referência original. Por isso, elas geralmente tem apenas um valor lógico futuro e as operações não geram novas EDs que existem simultaneamente.

```js
names = Array.of("Vitor", "Fernando")

names.push("Giovanna")

[...names]
//=> ['Vitor', 'Fernando', 'Giovanna']
```

### Estruturas de Dados Persistentes

São EDs imutáveis, ou seja, não podem ser modificadas e suas operações retornam novas EDs (geralmente com compartilhamento de estados). Por isso, existem N valores lógicos futuros e N EDs existindo simultaneamente a partir das operações.

```js
names = List.of("Vitor", "Fernando");

namesWithGiovanna = names.push("Giovanna")

[...names]
//=> ['Vitor', 'Fernando']

[...namesWithGiovanna]
//=> ['Giovanna', 'Vitor', 'Fernando']
```
