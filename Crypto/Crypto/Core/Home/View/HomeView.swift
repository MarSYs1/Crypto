//
//  HomeView.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 14/09/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.theme.backGroundColor
            
            VStack{
                Text("Header")
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
