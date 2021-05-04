//
//  ViewController.swift
//  SeccionesTableView
//
//  Created by Desarrollo DAM on 03/05/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var diccionarioAutomoviles = [String: [String]]()
    var tituloSecciones = [String]()
    var automoviles = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        automoviles = ["Audi", "Aston Martin", "BMW", "Bugatti", "Bentley", "Chevrolet", "Cadillac", "Dodge", "Ferrari", "Ford", "Honda", "Jaguar", "Lamborghini", "Mercedes", "Mazda", "Nissan", "Porsche", "Rolls Royce", "Toyota", "Volswagen"]
        
        for automovil in automoviles
        {
            let idAuto = String(automovil.prefix(1))
            if var carValues = diccionarioAutomoviles[idAuto]{
                carValues.append(automovil)
                diccionarioAutomoviles[idAuto] =  carValues
                print("Se agregó: \(carValues)")
            }
            else{
                diccionarioAutomoviles[idAuto] = [automovil]
            }
        }
        tituloSecciones = [String](diccionarioAutomoviles.keys)
        tituloSecciones = tituloSecciones.sorted(by: {$0 < $1})
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let idAuto = tituloSecciones[section]
        
        if let datosAuto = diccionarioAutomoviles[idAuto]{
            return datosAuto.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        let idAuto = tituloSecciones[indexPath.section]
        
        if let datosAuto = diccionarioAutomoviles[idAuto]{
            celda.textLabel?.text = datosAuto[indexPath.row]
        }
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tituloSecciones.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return tituloSecciones[section]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return tituloSecciones
    }
}

