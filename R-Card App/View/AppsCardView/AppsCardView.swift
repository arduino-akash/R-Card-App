//
//  AppsCardView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//


import SwiftUI

struct AppsCardView: View {
  // MARK: - PROPERTIES
  
  var data: Details
  var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
  @State private var showModal: Bool = false
  
  var body: some View {
      
    VStack(alignment: .leading, spacing: 0) {
      // CARD IMAGE
        NavigationLink(destination: MapsContentView()) {
            
            Image(data.image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.leading, 5)

        }
      
      VStack(alignment: .leading, spacing: 12) {
        // TITLE
        Text(data.title)
              .font(.avenirNext(size: 30))
              .bold()
              .frame(width: 350, alignment: .leading)
              .foregroundStyle(
                  LinearGradient(
                      colors: [.red, .blue, .green, .yellow],
                      startPoint: .leading,
                      endPoint: .trailing
                  )
              )
        
        // HEADLINE
        Text(data.headline)
          .font(.avenirNext(size: 20))
          .foregroundColor(Color.gray)
          .italic()
            
      }
    }
    .padding()
    .background(Color.white)
    .cornerRadius(12)
    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    .onTapGesture {
      self.hapticImpact.impactOccurred()
      self.showModal = true
    }
    .sheet(isPresented: self.$showModal) {
        AppDetailView(data: self.data)
    }
  }
}

struct AppsCardView_Previews: PreviewProvider {
  static var previews: some View {
    AppsCardView(data: cardData[0])
      .previewLayout(.sizeThatFits)
  }
}


