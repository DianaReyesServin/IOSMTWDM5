//
//  mostrarPDFViewController.swift
//  visorPDF
//
//  Created by Rodrigo Arango on 17/04/21.
//

import Foundation
import WebKit

class mostrarPDFViewController: UIViewController, WKNavigationDelegate {
    
    var vistaWeb: WKWebView!
    var tituloPDF: String?
    var nombrePDF: String?
    
    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vistaWeb.allowsBackForwardNavigationGestures = true
        visualizaPDF()
    }
    
    func visualizaPDF() {
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDF!, ofType: "pdf", inDirectory: "libros")!)
        
        let datosPDF = try? Data(contentsOf: direccionPDF)
        vistaWeb.load(datosPDF!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPDF)
    }
}
