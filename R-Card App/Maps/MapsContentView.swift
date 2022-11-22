//
//  MapsContentView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//

import SwiftUI

struct MapsContentView: View {
    var body: some View {
        VStack {
            ScrollView{
                Link(destination: URL(string: "maps://")!){
                    MapView()
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
                }
                
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text("Rakuten India")
                        .font(.avenirNext(size: 40))
                        .bold()
                    
                    HStack {
                        Text("Crimson House, Bangalore")
                            .font(.avenirNext(size: 20))
                        
                        Spacer()
                        Text("India")
                            .font(.avenirNext(size: 20))
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About Rakuten India")
                        .font(.avenirNext(size: 30))
                    Text("Rakuten India is the Development Centre and key technology hub of the Rakuten Group, Inc. We enable our businesses with our depth of knowledge in multiple streams of technology such as Mobile and Web Development, Web Analytics, Platform Development, Backend Engineering, Data Science, Machine Learning, Artificial Intelligence and much more. With 1700+ employees and growing, Rakuten India is housed in Crimson House Bangalore in the heart of the city.")
                        .font(.avenirNext(size: 15))
                    
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct MapsContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapsContentView()
    }
}
