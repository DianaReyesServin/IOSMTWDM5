//
//  StacksApp.swift
//  Stacks
//
//  Created by Rodrigo Arango on 13/04/21.
//

import SwiftUI

@main
struct StacksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
