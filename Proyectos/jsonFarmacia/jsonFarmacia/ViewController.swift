//
//  ViewController.swift
//  jsonFarmacia
//
//  Created by Rodrigo Arango on 17/04/21.
//

import UIKit

class ViewController: UIViewController, UITableView {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabla.delegate = self
        tabla.dataSource = self
    }
    
    func obtieneJSON() {
        let url = URL(string: "")
        URLSession.shared.dataTask(with: url!){
            (data, response, error) in
            
            if(error == nil){
                do{
                    self.medicamentos = try
                }
            }
        }
    }

    @IBOutlet weak var tabla: UITableView!
    
}

