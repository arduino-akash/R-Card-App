//
//  SliderView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct SliderView: View {
    
    // 1
    private let images = ["1", "2", "3", "4"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { item in
                 Image(item)
                    .resizable()
                    .cornerRadius(10)            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        // 4
        SliderView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
