//
//  CryptoApp.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 14/09/2023.
//

import SwiftUI

@main
struct CryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                HomeView()
                    .navigationBarHidden(true)
                    .environmentObject(vm)
            }
        }
    }
}
