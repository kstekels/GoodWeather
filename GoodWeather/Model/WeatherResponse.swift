//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by karlis.stekels on 20/09/2022.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
