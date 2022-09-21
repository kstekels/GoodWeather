//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by karlis.stekels on 20/09/2022.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityTemperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.city
        self.cityTemperatureLabel.text = "\(vm.temperature.formatAsDegreeCelsius())°"
    }
    
}

