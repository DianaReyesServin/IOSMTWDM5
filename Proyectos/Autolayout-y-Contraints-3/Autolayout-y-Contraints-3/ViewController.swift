//
//  ViewController.swift
//  Autolayout-y-Contraints-3
//
//  Created by Rodrigo Arango on 20/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var arribaIzquierda = UILabel()
    var arribaDerecha = UILabel()
    var abajoIzquierda = UILabel()
    var abajoDerecha = UILabel()
    
    var arregloConstraints = [NSLayoutConstraint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arribaIzquierda.backgroundColor = UIColor.blue
        arribaIzquierda.text = "Arri"
        arribaIzquierda.textColor = UIColor.black
        arribaIzquierda.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arribaIzquierda)
        
        let arribaIzquierdaTop = arribaIzquierda.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40)
        
        let arribaIzquierdaLeading = arribaIzquierda.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        
        let arribaIzquierdaWidth = arribaIzquierda.widthAnchor.constraint(equalToConstant: 150)
        
        let arribaIzquierdaHeight = arribaIzquierda.heightAnchor.constraint(equalToConstant: 150)
        
        arregloConstraints.append(contentsOf: [arribaIzquierdaTop, arribaIzquierdaLeading, arribaIzquierdaHeight, arribaIzquierdaWidth])
        
        
        arribaDerecha.backgroundColor = UIColor.green
        arribaDerecha.text = "Arrd"
        arribaDerecha.textColor = UIColor.black
        arribaDerecha.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(arribaDerecha)
               
        let arribaDerechaTop = arribaDerecha.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40)
               
        let arribaDerechaTrailing = arribaDerecha.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
               
        let arribaDerechaWidth = arribaDerecha.widthAnchor.constraint(equalToConstant: 150)
               
        let arribaDerechaHeight = arribaDerecha.heightAnchor.constraint(equalToConstant: 150)
               
        arregloConstraints.append(contentsOf: [arribaDerechaTop, arribaDerechaTrailing, arribaDerechaHeight, arribaDerechaWidth])
        
        abajoIzquierda.backgroundColor = UIColor.orange
        abajoIzquierda.text = "Abai"
        abajoIzquierda.textColor = UIColor.black
        abajoIzquierda.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(abajoIzquierda)
                       
        let abajoIzquierdaBottom = abajoIzquierda.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60)
                       
        let abajoIzquierdaLeading = abajoIzquierda.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
                       
        let abajoIzquierdaWidth = abajoIzquierda.widthAnchor.constraint(equalToConstant: 150)
                       
        let abajoIzquierdaHeight = abajoIzquierda.heightAnchor.constraint(equalToConstant: 150)
                       
        arregloConstraints.append(contentsOf: [abajoIzquierdaLeading, abajoIzquierdaBottom, abajoIzquierdaWidth, abajoIzquierdaHeight])
        
        abajoDerecha.backgroundColor = UIColor.purple
        abajoDerecha.text = "Abad"
        abajoDerecha.textColor = UIColor.black
        abajoDerecha.translatesAutoresizingMaskIntoConstraints = false
                       view.addSubview(abajoDerecha)
                              
        let abajoDerechaBottom = abajoDerecha.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60)
                              
        let abajoDerechaTrailing = abajoDerecha.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
                              
        let abajoDerechaWidth = abajoDerecha.widthAnchor.constraint(equalToConstant: 150)
                              
        let abajoDerechaHeight = abajoDerecha.heightAnchor.constraint(equalToConstant: 150)
                              
        arregloConstraints.append(contentsOf: [abajoDerechaTrailing, abajoDerechaBottom, abajoDerechaWidth, abajoDerechaHeight])
        
        NSLayoutConstraint.activate(arregloConstraints)

        // Do any additional setup after loading the view.
    }
}

