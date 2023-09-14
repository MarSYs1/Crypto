//
//  CicleButton.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 14/09/2023.
//

import SwiftUI

struct CicleButton: View {
    
    let incoName: String
    
    var body: some View {
        Image(systemName: incoName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
               Circle()
                .foregroundColor(Color.theme.backGroundColor)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25), radius: 10, x: 0, y: 0)
            .padding()
    }
}

struct CicleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CicleButton(incoName: "info")
                .previewLayout(.sizeThatFits)
            
            CicleButton(incoName: "plus")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
