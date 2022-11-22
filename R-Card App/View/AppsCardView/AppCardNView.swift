//
//  AppCardNView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 22/11/22.
//

import SwiftUI

struct AppCardNView: View {
  // MARK: - PROPERTIES
  
    var card: Details
    
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


struct AppCardNView_Previews: PreviewProvider {
  static var previews: some View {
    AppCardNView(card: cardData[0])
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 375, height: 480))
      .padding()
  }
}
