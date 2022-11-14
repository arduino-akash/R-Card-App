//
//  OnboardingView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  
  var cards: [Data] = appData
  
  // MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(cards[0...5]) { item in
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
    OnboardingView(cards: appData)
      .previewDevice("iPhone 13")
  }
}

