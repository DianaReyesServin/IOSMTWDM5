//
//  AppDelegate.swift
//  CicloApp
//
//  Created by Rodrigo Arango on 15/04/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Se inicio mi aplicación")
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
            print("La app se va a renuncuar en modo activo")
        }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("La app ya entró en modo background")
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        print("La app generó un aviso de memoria")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("La app pasó de modo backgound a modo activo")
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
            print("La app ya se hizo activa")
        }
}

