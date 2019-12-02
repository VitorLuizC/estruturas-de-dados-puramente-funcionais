type Stack<T> = null | Readonly<{
  head: T;
  tail: Stack<T>;
}>;

// Inicializa uma pilha com o valor para pilhas vazias.
const init = <T>(): Stack<T> => null;

// Obtém a cabeça da pilha, o primeiro elemento.
const head = <T>(stack: Stack<T>): null | T =>
  stack === null ? null : stack.head;

// Obtém a cauda da pilha, todos os elementos que não o primeiro.
const tail = <T>(stack: Stack<T>): Stack<T> =>
  stack === null ? null : stack.tail;

// Checa se a pilha está vazia.
const isEmpty = <T>(stack: Stack<T>): boolean => stack === null;

// Remove o elemento da Stack.
// Retorna numa tupla o primeiro elemento e uma pilha com os outros elementos.
const pop = <T>(stack: Stack<T>): [null | T, Stack<T>] => [
  head(stack),
  tail(stack)
];

// Adiciona um elemento na Stack.
const push = <T>(stack: Stack<T>, value: T): Stack<T> =>
  Object.create(null, {
    head: {
      value,
      writable: false,
      enumerable: true,
      configurable: false
    },
    tail: {
      value: stack,
      writable: false,
      enumerable: true,
      configurable: false
    }
  });

// Obtém o primeiro elemento da Stack.
const peek = head;

export { Stack, init, head, tail, isEmpty, pop, push, peek };
