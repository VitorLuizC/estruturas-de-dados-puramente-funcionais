module ListStack where

import           Data.Maybe
import           Data.List

type ListStack a = [a]

-- Inicializa uma pilha com uma lista vazia.
init :: ListStack a
init = []

-- Obtém a cabeça da pilha, o primeiro elemento.
head :: ListStack a -> Maybe a
head []      = Nothing
head (x : _) = Just x

-- Obtém a cauda da pilha, todos os elementos que não o primeiro.
tail :: ListStack a -> Maybe (ListStack a)
tail []       = Nothing
tail (_ : xs) = Just xs

-- Checa se a pilha está vazia.
isEmpty :: ListStack a -> Bool
isEmpty = Data.List.null

-- Remove o elemento da ListStack.
-- Retorna numa tupla o primeiro elemento e uma pilha com os outros elementos.
pop :: ListStack a -> (Maybe a, Maybe (ListStack a))
pop stack = (ListStack.head stack, ListStack.tail stack)

-- Adiciona um elemento na ListStack.
push :: ListStack a -> a -> ListStack a
push xs x = x : xs

-- Obtém o primeiro elemento da ListStack.
peek :: ListStack a -> Maybe a
peek = ListStack.head
