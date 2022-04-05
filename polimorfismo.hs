-- El polimnorfismo en resumidas palabras se refiere a las distintas formas que puede tomar,
-- un dato. no existe un valor en especial si no que se denota de tipo "def :: a -> a", "a"
-- es una variable de TIPO. Por ejemplo:

identidad :: a -> a 
identidad x = x   

-- La función identidad toma un valor de tipo GENERICO y devuelve el mismo valor del mismo tipo, 
-- esta es una función polimorfica parametrica.
-- Que quiere decir que sea parametrica? que sea parametrica quiere decir que la función 
-- no conoce absolutamente nada de su tipo. Por ejemplo:

f :: Num a => a -> a
f x = x*x  

-- Esta función es una función polimorfica, siempre dentro de una misma clase, y a 
-- que me refiero con esto? a que la función puede ser de multiples tipos como por
-- ejemplo de tipo "Int", "Intenger", "Float", etc. Siempre y cuando estos tipos esten
-- dentro de la misma clase, estos tipos pertencen a la clase "Num". Por lo tanto podemos
-- decir que esta NO es una función polimorfica parametrica, la función polimorifca parametrica
-- seria lo contrario, dicha función no conoce nada del tipo, ni la clase ni nada. La unica 
-- función polimorfica parametrica seria la funcion "id" (definida anteriormente -> linea 5)

-- La funcion "f" definida en la linea 13 es una función "polimorfica ad hoc". Cumple la propiedad
-- Ad hoc cuando en la función se esta especificando a que clase se refiere. Por ejemplo en "f" 
-- definimos que nos estamos refiriendo a la clase de "Num", ya sea con el signo de * que pertenece
-- a dicha clase o con la especificacion " Num a =>  a -> a" 

