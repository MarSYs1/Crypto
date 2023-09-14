//
//  HomeView.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 14/09/2023.
//

import SwiftUI

struct HomeView: View {
    

    @State private var showPortfolio: Bool = false
    
    
    var body: some View {
        ZStack{
            
            Color.theme.backGroundColor
            
            VStack{
                homeHeader
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




extension HomeView{
    private var homeHeader: some View{
        HStack{
            CicleButton(incoName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .background(
                  CicleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            
            Spacer()
            CicleButton(incoName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180: 0))
                .onTapGesture {
                    withAnimation(.spring()){
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
