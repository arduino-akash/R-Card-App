//
//  AppView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 20/11/22.
//

import SwiftUI
import AKChatBot

struct AppView: View {
  var body: some View {
    TabView {
      HomeView()
        .tabItem({
          Image(systemName: "house.circle")
                .font(.largeTitle)

          Text("Home")
        })
      ContentView()
        .tabItem({
            Image(systemName: "forward.end.circle")
                .font(.largeTitle)
            
            Text("R-Card")
        })
        BotContentView()
          .tabItem({
            Image(systemName: "person.crop.circle.dashed")
                  .font(.largeTitle)

            Text("ChatBot")
          })
    }
    .accentColor(Color.primary)
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
      .previewDevice("iPhone 13")
  }
}

