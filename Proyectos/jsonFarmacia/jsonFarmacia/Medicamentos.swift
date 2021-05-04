//
//  Medicamentos.swift
//  jsonFarmacia
//
//  Created by Desarrollo DAM on 03/05/21.
//

import Foundation

struct Medicamento: Decodable {
    var nombre: String
    var foto: String
    var dosis: String
    var sustancia: String
}
