//
//  CardRowView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct CardRowView: View {
  // MARK: - PROPERTIES
  
  var card: Data

  // MARK: - BODY

  var body: some View {
    HStack {
      Image(card.image)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 60, height: 60, alignment: .leading)
//        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
//        .background(
//          LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom)
//        )
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(card.title)
          .foregroundColor(Color.white)
          .font(.title2)
          .fontWeight(.bold)
        Text(card.headline)
          .font(.caption)
          .foregroundColor(Color.white)
      }
    }.frame(width: 350, alignment: .leading)
  }
}

struct CardRowView_Previews: PreviewProvider {
    static var previews: some View {
        CardRowView(card: appData[0])
          .previewLayout(.fixed(width: 375, height: 440))
      
    }
}

