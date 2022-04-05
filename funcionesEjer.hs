-- Desarrollo 
-- 1-)

esCero :: Int -> Bool
esCero x = x == 0

multiplo :: Int-> Int -> Bool
multiplo x y = mod x y == 0


esPositivo :: Int -> Bool
esPositivo x = x > 0

esVocal :: Char -> Bool
esVocal x = x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u'

-------------------------------------------------------------------------
-- 2-)

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = x == True && paratodo xs

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

promedio :: [Int] -> Int
promedio (x:xs) = sumatoria(x:xs) `div` length(x:xs)

-------------------------------------------------------------------------
-- 3-)

pertenece :: Int -> [Int] -> Bool
pertenece _ [] = False
pertenece y (x:xs) | x == y = True
                   | otherwise = pertenece y xs

-------------------------------------------------------------------------
-- 4-)

paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] f = True
paratodo' (x:xs) f = f x && paratodo' xs f 

existe' :: [a] -> (a -> Bool) -> Bool
existe' [] _ = False
existe' (x:xs) f = f x || existe' xs f

sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] _ = 0
sumatoria' (x:xs) funcion = funcion x + sumatoria' xs funcion

productoria' :: [a] -> (a -> Int) -> Int
productoria' [] _ = 1
productoria' (x:xs) funcion = funcion x * productoria' xs funcion

-------------------------------------------------------------------------
--5-)

paratodo'' :: [Bool] -> Bool
paratodo'' (x:xs) = paratodo' (x:xs) (==True)

-------------------------------------------------------------------------
--6-)

todosPares :: [Int] -> Bool
todosPares (x:xs) = paratodo' (x:xs) even

--------------------------------- 
esMultiplo :: Int -> Int -> Bool
esMultiplo n x = (mod n x == 0)

hayMultiplo :: Int -> [Int] -> Bool
hayMultiplo n xs = existe' xs (esMultiplo n)
----------------------------------

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria' [1..n] (^2)

factorial' :: Int -> Int
factorial' n = productoria [1..n]

--multiplicapares no supe como hacerla 
-------------------------------------------------------------------------
--7-)

-- a-) Map es una función que te permite transformar los elementos de una lista
--     y que devuelve una nueva lista con los elementos transformados.
---    Filter es una función que verifica si cada elemento de una lista cumple
--     con un predicado definido, devolviendo solo los que cumplen.
--- b-) La función map succ xs muestra el siguiente valor de cada elemento de la lista. Ej:
---     Prelude> map succ [1,2,3]
---     >[2,3,4]
--- c-) La expresión filter esPositivo verifica si cada elemento de la lista sea mayor a 0 y 
---    devuelve solo los que cumplen dicho predicado. Ej: 
---    Prelude> filter esPositivo[1, -4, 6, 2, -8]
---    > [1, 6, 2]

-------------------------------------------------------------------------
--8-) 


duplica :: [Int] -> [Int]
duplica [] = [] 
duplica (x:xs) = (^2)x : duplica xs

duplica2 :: [Int] -> [Int]
duplica2 x = map(^2) x

-------------------------------------------------------------------------
--9-)

-- a-) 
pares :: Integral a => [a] -> [a]
pares [] = []
pares (x:xs) | mod x 2 == 0 = x : pares xs 
             | otherwise = pares xs

-- b-) 
pares1 :: [Int] -> [Int]
pares1 x = filter even x


-- c-) 
multiplicaPares :: [Int] -> Int 
multiplicaPares x = productoria(filter even x)  

-------------------------------------------------------------------------
--10-)
-- a-) 
primIgualesA:: Eq a => a->[a]->[a]
primIgualesA n []= []
primIgualesA n (x:xs)| n == x = n:(primIgualesA n xs)
                     | otherwise = primIgualesA n xs 
-- b-) 
primIgualesA2:: Eq a => a-> [a]->[a]
primIgualesA2 n xs= takeWhile (\h-> n==h) xs

-------------------------------------------------------------------------
--11 -)
--a -)
primIguales:: Eq a => [a]-> [a]
primIguales [] = []
primIguales (x:xs)| length (x:xs)==1 = (x:xs) 
                  |x==head xs = x: primIguales xs
                  |otherwise = x:[]

--b -)
primiguales2 :: Eq a => [a]-> [a]
primiguales2 x |length x==0 = []|otherwise = primIgualesA2 (head x) x  

