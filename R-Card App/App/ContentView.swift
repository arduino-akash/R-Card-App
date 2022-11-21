//
//  ContentView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var headers: [Header] = headersData
    var facts: [Fact] = clientData
    var info: [Details] = cardData
    
    @State private var isShowingSettings: Bool = false
    @State private var searchText = ""
    
    
    var card: [Data] = appData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                      HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            AppHeaderView(header: item)
                        }
                      }
                    }
                    
                    Text("Our Clients")
                        .font(.avenirNext(size: 30))
                        .bold()
                        .frame(width: 350, alignment: .leading)
                        .padding()
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.red, .blue, .green, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    ScrollView(.horizontal, showsIndicators: false) {
                      HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            ClientView(fact: item)
                        }
                      }
                      .padding(.vertical)
                      .padding(.leading, 95)
                      .padding(.trailing, 20)
                    }
                    
                    VStack{
                        Text("Explore")
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
                        
                        Icon()
                            .padding()
                        
                    }
                    
                    VStack(alignment: .center, spacing: 20) {
                      ForEach(info) { item in
                          AppsCardView(data: item)
                      }
                    }
                    .frame(maxWidth: 640)
                    .padding(.horizontal)
                    

                    
                    Text("R-Apps")
                        .font(.avenirNext(size: 30))
                        .bold()
                        .frame(width: 350, alignment: .leading)
                        .padding()
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.red, .blue, .green, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                                        
                    ForEach(card.shuffled()) { item in
                        NavigationLink(destination: CardDetailView(card: item)) {
                            CardRowView(card: item)
                                .padding(.vertical, 1)
                                .frame( alignment: .leading)
                        }
                    }
                }
                .navigationTitle("R-Card")
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            isShowingSettings = true
                        }) {
                            Image(systemName: "slider.horizontal.3")
                        } //: BUTTON
                        .sheet(isPresented: $isShowingSettings) {
                            SettingsView()
                        }
                )
            }
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())

        
//        .background(
//            Image("background")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//        )
//        .edgesIgnoringSafeArea(.all)
        
    }
        
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(card: appData)
            .previewDevice("iPhone 13")
    }
}

