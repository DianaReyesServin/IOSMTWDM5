import UIKit

var cadena:String = "This is the way"
var otraCadena:String = ""


var regalosNavidad: Int?
regalosNavidad = 10

if regalosNavidad != nil{
    var cantidadRegalos = regalosNavidad!
    print("Llegaron \(cantidadRegalos) regalos de navidad - Happy")
}
else
{
    print("No llegaron regalos de navidad - Sad")
}
