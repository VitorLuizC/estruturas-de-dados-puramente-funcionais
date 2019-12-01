module Stack where

import Data.Maybe

data Stack a = Empty | Cons a (Stack a)

-- Inicializa uma pilha com o valor para pilhas vazias.
init :: Stack a
init = Empty

-- Obtém a cabeça da pilha, o primeiro elemento.
head :: Stack a -> Maybe a
head Empty = Nothing
head (Cons x _) = Just x

-- Obtém a cauda da pilha, todos os elementos que não o primeiro.
tail :: Stack a -> Maybe (Stack a)
tail Empty = Nothing
tail (Cons _ xs) = Just xs

-- Checa se a pilha está vazia.
isEmpty :: Stack a -> Bool
isEmpty Empty = True
isEmpty _     = False

-- Remove o elemento da Stack.
-- Retorna numa tupla o primeiro elemento e uma pilha com os outros elementos.
pop :: Stack a -> (Maybe a, Maybe (Stack a))
pop stack = (head stack, tail stack)

-- Adiciona um elemento na Stack.
push :: Stack a -> a -> Stack a
push = Cons

-- Obtém o primeiro elemento da Stack.
peek :: Stack a -> Maybe a
peek = head
