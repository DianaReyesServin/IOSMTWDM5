import UIKit

for i in 1...10{
    print(i)
}

var rangoNumeros = 1...20

for i in rangoNumeros{
    print(i)
}

var peliculasFavoritas = ["Alien", "Matrix", "Indiana Jones"]
print(peliculasFavoritas[2])

//Ciclo for
for x in peliculasFavoritas{
    print(x)
}

//Ciclo while
var j = 1
while (j <= 5) {
    print("Ciclo: \(j)")
    j += 1
}

//Ciclo repeat
var k = 1
repeat{
    print("Ciclo: \(k)")
    k += 1
}while k <= 5

//Arreglos
let superHeroes:[String] = ["Superman", "Thor", "Mujer maravilla"]
for nombre in superHeroes{
    print("Hola \(nombre)")
}

//Diccionarios
var personajeBob:[Int:String] = [1:"Bob", 2:"Patricio", 3:"Calamardo"]
for(indice, nombre) in personajeBob{
    print("\(indice) Nombre: \(nombre)")
}
