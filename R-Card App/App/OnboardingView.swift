//
//  OnboardingView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  
  var cards: [Welcome] = welcomeData
  
  // MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(cards[0...2]) { item in
        CardView(card: item)
      } //: LOOP
    } //: TAB
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(cards: welcomeData)
      .previewDevice("iPhone 13")
  }
}

