//
//  Weather.swift
//  WeatherApp
//
//  Created by Eyüp YASUNTİMUR on 30.07.2021.
//

import Foundation

struct WeatherStatus: Decodable {
  let main: Main?
  let weather: Weather?
}

struct Main: Decodable {
  let temp: Float?
}

struct Weather: Decodable {
  let main: String?
}
