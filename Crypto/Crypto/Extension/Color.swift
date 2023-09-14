//
//  Color.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 14/09/2023.
//

import Foundation
import SwiftUI



extension Color {
    static let theme = ColorTheme()
}


struct ColorTheme{
    let accent = Color("AccentColor")
    let backGroundColor = Color("BackGroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secundaryTextColor = Color("SecundaryTextColor")
}
