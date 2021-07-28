//
//  ContentView.swift
//  WeatherApp
//
//  Created by Eyüp YASUNTİMUR on 28.07.2021.
//

import SwiftUI

struct ContentView: View {
  
  @State var buttonText: String = "Change Day Time"
  
    var body: some View {
      ZStack{
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
          .edgesIgnoringSafeArea(.all)
        VStack{
          Text("Cupertino, CA")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
          WheaterView()
            .padding(.bottom, 50)
          HStack{
            WheaterDayView(dayOfWeek: "TUE",
                           imageName: "cloud.sun.fill",
                           temperature: 75)
            
            WheaterDayView(dayOfWeek: "WED",
                           imageName: "sun.max.fill",
                           temperature: 74)
            
            WheaterDayView(dayOfWeek: "THU",
                           imageName: "cloud.fill",
                           temperature: 78)
            
            WheaterDayView(dayOfWeek: "FRI",
                           imageName: "wind",
                           temperature: 82)
            
            WheaterDayView(dayOfWeek: "SAT",
                           imageName: "cloud.sun.fill",
                           temperature: 77)
          }
          .padding(.bottom, 100)
          Button(buttonText) {
            if buttonText == "Change Day Time" {
              buttonText = "Day Time Changed"
            } else {
              buttonText = "Change Day Time"
            }
            print("tapped")
          }
          .buttonStyle(CustomButton())
      
          Spacer()
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
          .previewDevice("iPhone 12 Pro Max")
      }
    }
}

struct WheaterView: View {
  var body: some View {
    VStack(spacing: 5){
      Image(systemName: "cloud.sun.fill")
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 180, height: 180)
      Text("76°")
        .font(.system(size: 70, weight: .medium))
        .foregroundColor(.white)
    }
  }
}

struct WheaterDayView: View {
  
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack(spacing: 2 ){
      Text(dayOfWeek)
        .font(.system(size: 16, weight: .medium, design: .default))
        .foregroundColor(.white)
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 40, height: 40)
      Text("\(temperature)°")
        .font(.system(size: 24, weight: .medium))
        .foregroundColor(.white)
    }
    .frame(width: UIScreen.main.bounds.width / 6)
    .aspectRatio(contentMode: .fit)
  }
}

struct CustomButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.white)
            .foregroundColor(.blue)
            .cornerRadius(10)
            .font(.system(size: 20, weight: .bold))
    }
}
