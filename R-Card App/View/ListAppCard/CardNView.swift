//
//  CardNView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct CardNView: View {
  // MARK: - PROPERTIES
  
    var card: Data
    
  let information: [String] = ["Developed by", "Language", "App size", "Age"]

  var body: some View {
    GroupBox() {
      DisclosureGroup("App info - ") {
        ForEach(0..<information.count, id: \.self) { item in
          Divider().padding(.vertical, 2)
          
          HStack {
            Group {
              Image(systemName: "info.circle")
              Text(information[item])
            }
            .foregroundColor(card.gradientColors[1])
            .font(Font.system(.body).bold())
            
            Spacer(minLength: 25)
            
            Text(card.info[item])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    } //: BOX
  }
}


struct CardNView_Previews: PreviewProvider {
  static var previews: some View {
    CardNView(card: appData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
