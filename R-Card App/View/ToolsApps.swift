//
//  ToolsApps.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 15/11/22.
//

import SwiftUI

struct ToolsApps: View {
    
    @State private var navigateView = false
    
    var body: some View {
        NavigationView {
            VStack{
                Section(header: HeaderView(text: "Explore")) {
                    
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
            }
        }
    }
}


struct ToolsApps_Previews: PreviewProvider {
    static var previews: some View {
        ToolsApps()
    }
}


