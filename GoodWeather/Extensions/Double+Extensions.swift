//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by karlis.stekels on 20/09/2022.
//

import Foundation


extension Double {
    func formatAsDegreeCelsius() -> String {
        return String(format: "%.0f", self)
    }
}
