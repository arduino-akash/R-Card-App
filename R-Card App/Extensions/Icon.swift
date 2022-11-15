//
//  Icon.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 15/11/22.
//

import SwiftUI

struct Icon: View {
    // MARK: - PROPERTIES
    
    private let images = ["1", "2", "3", "4"]
    private let names = ["Google","Recharge","Youtube","Weather"]
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HStack{
                ForEach(names, id: \.self) { item1 in
                    
                    ForEach(images, id: \.self) { item in
                        
                        VStack{
                            Image(item)
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80, alignment: .leading)
                                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                            //        .background(
                            //          LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom)
                            //        )
                                .cornerRadius(8)
                            
                            Text(item1)
                                .font(.avenirNext(size: 13))
                        }
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
        
        
    }
}


struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Icon()
    }
}
