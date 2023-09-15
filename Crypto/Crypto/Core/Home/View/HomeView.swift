//
//  HomeView.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 14/09/2023.
//

import SwiftUI

struct HomeView: View {
    

    @State private var showPortfolio: Bool = false
    
    @EnvironmentObject private var vm: HomeViewModel
    
    
    var body: some View {
        ZStack{
            
            Color.theme.backGroundColor
            
            VStack{
                homeHeader
                
                if !showPortfolio{
                    alCoinsList
                    .transition(.move(edge: .leading))
                }
                
                if showPortfolio{
                    portfolioCoinsList
                        .transition(.move(edge: .trailing))
                }
                
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
                .environmentObject(dev.homeVm)
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
    
    
    private var alCoinsList: some View{
        List{
            ForEach(vm.allCoins){coin in
                CoinRowView(coin: coin, showHoldingsColumn: false)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioCoinsList: some View{
        List{
            ForEach(vm.portfolioCoins){coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
}
