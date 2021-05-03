//
//  ViewController.swift
//  vistaWeb-1
//
//  Created by Rodrigo Arango on 28/04/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var vistaWeb: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let liga = URL(string: "https://grupohernandezalba.com")!
        vistaWeb.load(URLRequest(url: liga))
        vistaWeb.allowsBackForwardNavigationGestures = true
    }
    
    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
    }
}

