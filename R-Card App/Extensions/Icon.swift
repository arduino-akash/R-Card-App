//
//  Icon.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 15/11/22.
//

import SwiftUI

struct Icon: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .top){
            
            NavigationLink(destination: PinchContentView()) {
                VStack(spacing: 8){
                    VStack{
                        Image(systemName: "dot.arrowtriangles.up.right.down.left.circle").renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    }.padding()
                        .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                    Text("Zoomin App")
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.8))
                    .multilineTextAlignment(.center)
                }
            }
                
            
            
            Spacer(minLength: 15)
            Link(destination: URL(string: "https://www.google.com/")!){
                VStack(spacing: 8){
                    VStack{
                        Image(systemName: "magnifyingglass.circle").renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)

                    }.padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                    Text("Google")
                    .frame(width: 55)
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.8))
                        .multilineTextAlignment(.center)
                }
            }
            
            Spacer(minLength: 15)
            Link(destination: URL(string: "https://www.freecharge.in/mobile-recharge")!){

                VStack(spacing: 8){
                    VStack{
                        Image(systemName: "bonjour").renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    }.padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                    Text("Recharge")
                    .frame(width: 55)
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.8))
                    .multilineTextAlignment(.center)
                }
            }

            Spacer(minLength: 15)
            Link(destination: URL(string: "https://paytm.com/electricity-bill-payment")!){
                VStack(spacing: 8){
                    VStack{
                        Image(systemName: "lightbulb.circle").renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                    }.padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                    Text("Eletricity")
                    .frame(width: 55)
                    .font(.caption)
                    .foregroundColor(Color.white.opacity(0.5))
                    .multilineTextAlignment(.center)
                }
            }
        
        }.padding()
    }
}


struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Icon()
    }
}
