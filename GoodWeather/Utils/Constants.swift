//
//  Constants.swift
//  GoodWeather
//
//  Created by karlis.stekels on 20/09/2022.
//

import Foundation

struct Constants {
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            
            // get the default settings for temperature
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "metric"
            
            //Get API key from environment variables
            guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"] else {
                fatalError("Invalid API key")
            }
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&units=\(unit)&appid=\(apiKey)")!
        }
    }
}
