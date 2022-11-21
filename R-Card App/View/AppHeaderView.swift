//
//  HeaderView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//

import SwiftUI

struct AppHeaderView: View {
  // MARK: - PROPERTIES
  
  var header: Header
  
  @State private var showHeadline: Bool = false
  
  var slideInAnimation: Animation {
    Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
      .speed(1)
      .delay(0.25)
  }
  
  var body: some View {
    ZStack {
      Image(header.image)
        .resizable()
        .aspectRatio(contentMode: .fill)
        
      
      HStack(alignment: .top, spacing: 0) {
        Rectangle()
          .fill(Color("ColorGreenLight"))
          .frame(width: 4)
        
        VStack(alignment: .leading, spacing: 6) {
          Text(header.headline)
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .shadow(radius: 3)
          
          Text(header.subheadline)
            .font(.footnote)
            .lineLimit(2)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.white)
            .shadow(radius: 3)
        }
        .padding(.vertical, 0)
        .padding(.horizontal, 20)
        .frame(width: 281, height: 105)
        .background(Color("ColorBlackTransparentLight"))
      }
      .frame(width: 285, height: 105, alignment: .center)
      .offset(x: -66, y: showHeadline ? 75 : 220)
      .animation(slideInAnimation, value: showHeadline)
      .onAppear(perform: {
        showHeadline = true
      })
      .onDisappear(perform: {
        showHeadline = false
      })
    }
    .frame(width: 480, height: 320, alignment: .center)
  }
}

struct AppHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    AppHeaderView(header: headersData[1])
      .previewLayout(.sizeThatFits)
      .environment(\.colorScheme, .dark)
  }
}
