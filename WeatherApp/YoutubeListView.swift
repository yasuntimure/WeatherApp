//
//  YoutubeListView.swift
//  WeatherApp
//
//  Created by Eyüp YASUNTİMUR on 30.07.2021.
//

import SwiftUI

struct YoutubeListView: View {
    var body: some View {
      HStack {
        Image("average-dev")
          .resizable()
          .scaledToFit()
          .frame(height: 70)
          .cornerRadius(4)
        
        VStack(alignment: .leading) {
          Text("I'm an average developer")
            .fontWeight(.semibold)
            .lineLimit(2)
            .minimumScaleFactor(0.5)
          
          Text("January 1 2021")
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
        
        
       
      }
    }
}

struct YoutubeListView_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeListView()
    }
}
