//
//  ViewController.swift
//  TextAutoresize
//
//  Created by Rodrigo Arango on 18/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NombreEmpleado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NombreEmpleado.text = "Francisco Fernandez de la Mora"
        
        // Do any additional setup after loading the view.
    }


}

