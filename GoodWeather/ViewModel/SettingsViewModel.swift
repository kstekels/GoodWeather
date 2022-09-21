//
//  SettingsViewModel.swift
//  GoodWeather
//
//  Created by karlis.stekels on 21/09/2022.
//

import Foundation

enum Unit: String, CaseIterable {
    case celsius = "metric"
    case fahrenheit = "Imperial"
}

extension Unit {
    var displayName: String {
        get {
            switch(self) {
            case .celsius:
                return "Celsius"
            case .fahrenheit:
                return "Fahrenheit"
            }
        }
    }
}

class SettingsViewModel {
    
    let units = Unit.allCases
    var selectedUnit: Unit {
        get {
            let userDefault = UserDefaults.standard
            var unitValue = ""
            if let value = userDefault.value(forKey: "unit") as? String {
                unitValue = value
            }
            return Unit(rawValue: unitValue)!
        }
        set {
            let userDefaults = UserDefaults.standard
            userDefaults.set(newValue.rawValue, forKey: "unit")
        }
    }
    
}
