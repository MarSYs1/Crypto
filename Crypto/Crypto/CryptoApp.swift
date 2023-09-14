//
//  CryptoApp.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 14/09/2023.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
