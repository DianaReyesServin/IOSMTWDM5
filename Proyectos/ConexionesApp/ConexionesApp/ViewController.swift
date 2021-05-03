//
//  ViewController.swift
//  ConexionesApp
//
//  Created by Rodrigo Arango on 16/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreDepartamento: UILabel!
    
    var objetoEmpleado: Empleado?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nombreDepartamento.text = "Depto de sistemas"
    }

    @IBAction func altaEmpleado(_ sender: UIButton) {
        objetoEmpleado = Empleado()
        objetoEmpleado?.nombre = "Juan"
        objetoEmpleado?.apellido = "Pérez"
        objetoEmpleado?.numeroEmpleado = 1
        objetoEmpleado?.numeroIMSS = 123
        
        print("Entro a alta empleado")
    }
    
    @IBAction func consultarEmpleado(_ sender: UIButton) {
        print("Entro a consultar empleado")
        print("\(objetoEmpleado!.nombre)")
    }
    
    @IBAction func verImss(_ sender: UIButton) {
        print("Entro a ver IMSS")
        print("\(objetoEmpleado!.numeroIMSS)")
    }
    
    @IBAction func bajaEmpleado(_ sender: UIButton) {
        print("Entro a baja empleado")
    }
}

