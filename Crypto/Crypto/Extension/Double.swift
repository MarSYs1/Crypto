//
//  Double.swift
//  Crypto
//
//  Created by Mauro de Oliveira André on 15/09/2023.
//

import Foundation



extension Double{
    
    
    private var currencyFormatter2: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current
        //formatter.currencyCode = "usd"
        //formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    
    func asCurrencyWith2Decimals() -> String{
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    func asNummberString() -> String{
        return String(format: "%.2f", self)
    }
    
    func asPercentString() -> String{
        return asNummberString() + "%"
    }
    
}
