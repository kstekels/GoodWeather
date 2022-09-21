//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by karlis.stekels on 20/09/2022.
//

import Foundation
import UIKit


protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    private var addWeatherVM = AddWeatherViewModel()
    
    var delegate: AddWeatherDelegate?
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { (vm) in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
    @IBAction func cancelButtonPressed() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
