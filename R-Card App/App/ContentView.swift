//
//  ContentView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    @State private var searchText = ""

    
    var card: [Data] = appData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView{
            VStack{
                Section(){
                    Text(searchText)
                        .searchable(text: $searchText, prompt: "Look for something")
            }
                
                
                Section(header: HeaderView(text: "Welcome to the world of Rakuten")) {
                    SliderView()
                        .frame(height: 650, alignment: .trailing)
                        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                        .padding()
                }
                
                ToolsApps()
                    .frame(height: 350)
                    .padding()
                

                
                Section(header: HeaderView(text: "Latest")) {
                    ForEach(card.shuffled()) { item in
                        NavigationLink(destination: CardDetailView(card: item)) {
                            CardRowView(card: item)
                                .padding(.vertical, 1)
                                .frame( alignment: .leading)
                        }
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
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(card: appData)
            .previewDevice("iPhone 13")
    }
}

