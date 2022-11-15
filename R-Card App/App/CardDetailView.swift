//
//  CardDetailView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct CardDetailView: View {
  // MARK: - PROPERTIES
  
  var card: Data

  // MARK: - BODY

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
            
            Spacer()
          // HEADER
          CardHeaderView(card: card)
          
          VStack(alignment: .leading, spacing: 20) {
            // TITLE
            Text(card.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(card.gradientColors[1])
            
            // HEADLINE
            Text(card.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // APP INFO
            CardNView(card: card)
            
            // SUBHEADLINE
            Text("Learn more about \(card.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(card.gradientColors[1])
            
            // DESCRIPTION
            Text(card.description)
              .multilineTextAlignment(.leading)
            
            // LINK
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        } //: VSTACK
        
        .navigationBarTitle(card.title, displayMode: .inline)
        .navigationBarHidden(true)
      } //: SCROLL
      .edgesIgnoringSafeArea(.top)
    } //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

// MARK: - PREVIEW

struct CardDetailView_Previews: PreviewProvider {
  static var previews: some View {
    CardDetailView(card: appData[0])
      .previewDevice("iPhone 13")
  }
}

