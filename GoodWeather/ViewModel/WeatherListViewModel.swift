//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by karlis.stekels on 20/09/2022.
//

import Foundation

class WeatherListViewModel {
    private var weatherViewModel = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModel.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        return weatherViewModel.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        return weatherViewModel[index]
    }
    
    private func toCelsius() {
        weatherViewModel = weatherViewModel.map { vm in
            let weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature - 32) * 5/9
            return weatherModel
        }
    }
    
    private func toFahrenheit() {
        weatherViewModel = weatherViewModel.map { vm in
            let weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature * 9/5) + 32
            return weatherModel
        }
    }
    
    func updateUnit(to unit: Unit) {
        switch unit {
        case .celsius:
            toCelsius()
        case .fahrenheit:
            toFahrenheit()
        }
    }
    
}

class WeatherViewModel {
    let weather: WeatherResponse
    var temperature: Double
    
    init(weather: WeatherResponse) {
        self.weather = weather
        self.temperature = weather.main.temp
    }
    
    var city: String {
        return weather.name
    }

    
}
