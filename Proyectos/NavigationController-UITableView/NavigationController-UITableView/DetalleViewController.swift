//
//  DetalleViewController.swift
//  NavigationController-UITableView
//
//  Created by Rodrigo Arango on 28/04/21.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var nombreEmpleado: UILabel!
    @IBOutlet weak var edadEmpleado: UILabel!
    @IBOutlet weak var fotoEmpleado: UIImageView!
    
    
    var nombreRecibido: String?
    var edadRecibida: Int?
    var fotoRecibida = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombreEmpleado.text = nombreRecibido!
        edadEmpleado.text = String(edadRecibida!)
        
        fotoEmpleado.image = fotoRecibida
    }
}
