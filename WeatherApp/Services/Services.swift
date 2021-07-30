//
//  Services.swift
//  WeatherApp
//
//  Created by Eyüp YASUNTİMUR on 30.07.2021.
//

import Foundation
//
//final class WebServices {
//
//  static let shared = WebServices()
//
//  func getPhotos(url: URL, completion: @escaping ([Photo]?) -> ()) {
//
//      URLSession.shared.dataTask(with: url) { data, response, error in
//
//          if let error = error {
//              print(error.localizedDescription)
//              completion(nil)
//          } else if let data = data {
//
//            let photoList = try? JSONDecoder().decode(PhotoList.self, from: data)
//
//              if let photoList = photoList {
//                completion(photoList.photos)
//              }
//            //print("photos: ",photoList?.photos as Any)
//          }
//
//      }.resume()
//  }
//}

final class Services {
  
  static let shared = Services()
  
  func getWeather(_ url: URL, completion: @escaping ([WeatherStatus]?) -> ()) {
    
      URLSession.shared.dataTask(with: url) { data, response, error in

          if let error = error {
              print(error.localizedDescription)
              completion(nil)
          } else if let data = data {

            let weatherList = try? JSONDecoder().decode(WeatherList.self, from: data)

              if let weatherList = weatherList {
                completion(weatherList.list)
              }
            print("weathers: ",weatherList?.list as Any)
          }

      }.resume()
  }
}
