//
//  Fotografia.swift
//  GaleriaJsonCollectionView
//
//  Created by Desarrollo DAM on 04/05/21.
//

import Foundation

struct Fotografia: Decodable {
    var id: String
    var urls: [String: String]
}
