//
//  CardHeaderView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct CardHeaderView: View {
  // MARK: - PROPERTIES
  
    var card: Data

  @State private var isAnimatingImage: Bool = false

  // MARK: - BODY

  var body: some View {
    ZStack {
//      LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
        Link(destination: URL(string: card.url)!){

      Image(card.image)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
        .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
    } 
    }
    .frame(height: 360)
    .onAppear() {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimatingImage = true
      }
    }
  }
}

// MARK: - PREVIEW

struct CardHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    CardHeaderView(card: appData[0])
      .previewLayout(.fixed(width: 375, height: 440))
  }
}
