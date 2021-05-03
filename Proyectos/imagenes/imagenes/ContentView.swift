//
//  ContentView.swift
//  imagenes
//
//  Created by Rodrigo Arango on 13/04/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        VStack{
            Text("Bienvenido").font(.title).padding()
            Image("logo").resizable().scaledToFit().scaledToFit()
            Spacer()
            Image("foto").resizable().padding(30).scaledToFill().scaledToFit().background(Color.gray).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(Color.blue)).shadow(color: Color.gray, radius: 5)
            Text("Todos los derechos reservados 2021").font(.caption).padding()
            Image(systemName: "moon.circle.fill").resizable().padding(20).scaledToFit().foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
