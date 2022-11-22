//
//  AppDetailView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//

import SwiftUI

struct AppDetailView: View {
  // MARK: - PROPERTIES
  
  var data: Details

  
  @State private var pulsate: Bool = false
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 0) {
        // IMAGE
          NavigationLink(destination: MapsContentView()) {
              
              Image(data.image)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 200, height: 200)
                  .padding(.top, 80)
          }
          
        Group {
          // TITLE

                Text(data.title)
                    .font(.avenirNext(size: 40))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("ColorBlueberryDark"))
                    .padding(.top, 10)
            
            AppCardNView(card: data)

            
            
            
            Text(data.headline)
              .font(.avenirNext(size: 30))
              .multilineTextAlignment(.center)
            
            Text(data.Description)
              .font(.avenirNext(size: 16))
              .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 12)
      }
    } // END OF VSTACK
    .edgesIgnoringSafeArea(.top)
    .overlay(
      HStack {
        Spacer()
        VStack {
          Button(action: {
            // ACTION
            self.presentationMode.wrappedValue.dismiss()
          }, label: {
            Image(systemName: "chevron.down.circle.fill")
              .font(.title)
              .foregroundColor(Color.white)
              .shadow(radius: 4)
              .opacity(self.pulsate ? 1 : 0.6)
              .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
              .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
          })
            .padding(.trailing, 20)
            .padding(.top, 24)
          Spacer()
        }
      }
    )
    .onAppear() {
      self.pulsate.toggle()
    }
  }
}

struct AppDetailView_Previews: PreviewProvider {
  static var previews: some View {
    AppDetailView(data: cardData[0])
  }
}
