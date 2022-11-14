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
        .aspectRatio(contentMode: .fill)
        .frame(width: 80, height: 80, alignment: .center)
//        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
//        .background(
//          LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom)
//        )
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text(card.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(card.headline)
          .font(.caption)
          .foregroundColor(Color.secondary)
      }
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct CardRowView_Previews: PreviewProvider {
  static var previews: some View {
      CardRowView(card: appData[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

