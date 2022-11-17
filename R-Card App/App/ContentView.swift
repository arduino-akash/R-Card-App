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
                    
                    Text("Building Whats never been built...")
                        .font(Font.system(size: 36, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.red, .blue, .green, .yellow],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    
                    
                    SliderView()
                        .frame(height: 650, alignment: .trailing)
                        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 1, trailing: 10))
                        .padding()
                    
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
                        
                        HStack{
                            Link(destination: URL(string: "https://www.google.com/")!){
                                VStack{
                                    Image(systemName: "magnifyingglass.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                        .padding()
                                    Text("Google")
                                        .font(.avenirNext(size: 16))
                                }
                                
                            }
                            
                            Link(destination: URL(string: "https://www.freecharge.in/mobile-recharge")!){
                                VStack{
                                    Image(systemName: "circle.hexagonpath")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                        .padding()
                                    Text("Recharge")
                                        .font(.avenirNext(size: 16))
                                    
                                }
                            }
                            
                            
                            Link(destination: URL(string: "https://www.youtube.com/")!){
                                VStack{
                                    Image(systemName: "airplayvideo.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                        .padding()
                                    Text("Youtube")
                                        .font(.avenirNext(size: 16))
                                }
                                
                            }
                            
                            Link(destination: URL(string: "weather://")!){
                                VStack{
                                    Image(systemName: "cloud.sun.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                        .padding()
                                    Text("Weather")
                                        .font(.avenirNext(size: 16))
                                }
                            }
                        }
                    }
                    
                    
                    //                    ToolsApps()
                    //                        .frame(height: 350,alignment: .top)
                    //                        .padding()
                    
                    
                    //                    AdView()
                    //                        .frame(width: 360, height: 200, alignment: .center)
                    //                        .border(.purple)
                    //                        .padding()
                    
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
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(card: appData)
            .previewDevice("iPhone 13")
    }
}

