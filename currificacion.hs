-- La aplicación parcial en Haskell nos sirve para poder resumir parametros en una funcion. 
-- Por ejemplo podemos hacer que una funcion que va de
--- Int-> Int-> Int pueda reducirse a Int -> Int. 
---Ejemplos

suma :: (Num a) => a -> a -> a 
suma x y = x + y 

sumaCorta :: (Num a) => a -> a
sumaCorta  = suma(2) 

cuadrado :: (Num a) => a -> a
cuadrado = (^2)

-- Nos referimos a Alto orden a cuando una función puede tomar como parametro otra función ó 
-- tambien cuando una función nos devuelve otra función. Ejemplo: 

f :: Int -> Int 
f x = x + x 

applytwice :: (Int -> Int) -> Int -> Int 
applytwice f = f 



-- La función map come una función y aplica dicha función en cada elemento de una lista o tupla
-- Por ejemplo: 

fun :: [Int] -> [Int]
fun x = map (^2) x  

fun2 :: Foldable a => [a Char] -> [Bool]
fun2 x = map (elem 'a' ) x 

-- La funcion filtrer recibe como parametro un predicado y lo aplica a cada elemnto
-- de una lista, los elementos que no cumplan con el predicado 
-- filtrer lo elimina de dicha lista

fun3 :: Int -> Bool
fun3 x = x == 4  

fun4 :: [Int] -> [Int]
fun4 x = filter (fun3) x   

fun5 :: [Int] -> Int
fun5 x = length(filter (fun3) x)   


-- mul :: Int -> [Int] -> Bool
-- mul y [] = True 
-- mul c (y:ys) |mod c y  == 0 = True 
--             |otherwise = False

-- hayMultiplo :: Int -> [Int] -> Bool
-- hayMultiplo x y = mul(x) y