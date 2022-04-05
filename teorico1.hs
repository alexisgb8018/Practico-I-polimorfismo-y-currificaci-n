esPositivo :: Int -> Bool
esPositivo x = x > 0

suma2 :: Int -> Int -> Int  
suma2 x y  = x + y 

sumatoria :: [a] -> (a -> Int) -> Int
sumatoria [] f= 0
sumatoria (x:xs) f = f x + sumatoria xs f

paratodo :: [a] -> (a -> Bool) -> Bool
paratodo [] f = True
paratodo (x:xs) f = f x && paratodo xs f    

existe :: [a] -> (a -> Bool) -> Bool
existe [] f = False
existe (x:xs) f = f x || existe xs f  

cuantgen:: (b->b->b)-> b -> [a]-> (a->b)-> b
cuantgen op z [] f= z
cuantgen op z (x:xs) f =(f x)  `op` (cuantgen op z xs f)
