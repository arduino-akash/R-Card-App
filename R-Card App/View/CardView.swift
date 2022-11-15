//
//  CardView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct CardView: View {
  // MARK: - PROPERTIES
  
  var card: Data
  
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        Image(card.image)
          .resizable()
          .frame(width: 200, height: 200, alignment: .center)
          .scaledToFit()
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1.0 : 0.6)
        
        Text(card.title)
          .foregroundColor(Color.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
        
        Text(card.headline)
          .foregroundColor(Color.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        
        StartButtonView()
      } //: VSTACK
    } //: ZSTACK
    .onAppear {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
  }
}

// MARK: - PREVIEW

struct CardView_Previews: PreviewProvider {
  static var previews: some View {
    CardView(card: appData[1])
      .previewLayout(.fixed(width: 320, height: 640))
  }
}

