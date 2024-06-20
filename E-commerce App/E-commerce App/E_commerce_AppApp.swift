//
//  E_commerce_AppApp.swift
//  E-commerce App
//
//  Created by student on 01/06/24.
//

import SwiftUI
import Firebase

@main
struct E_commerce_AppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
