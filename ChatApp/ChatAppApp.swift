//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Esma Koçak on 15.08.2024.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
