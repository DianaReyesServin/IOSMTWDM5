//
//  DetalleViewController.swift
//  jsonFarmacia
//
//  Created by Desarrollo DAM on 03/05/21.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet var imagen: UIImageView!
    @IBOutlet var Nombre: UILabel!
    @IBOutlet var Dosis: UILabel!
    @IBOutlet var Sustancia: UILabel!
    
    var nombreDetalle: String?
    var imagenDetalle = UIImage()
    var dosisDetalle: String?
    var sustanciaDetalle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Nombre.text = nombreDetalle
        imagen.image = imagenDetalle
        Dosis.text = dosisDetalle
        Sustancia.text = sustanciaDetalle
    }
}
