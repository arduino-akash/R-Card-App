//
//  AdView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 15/11/22.
//

import SwiftUI

struct AdView: View {
    
    // 1
    private let images = ["RM", "RTV", "RGE", "R25"]
    private let links = ["https://corp.mobile.rakuten.co.jp/english/", "https://rakuten.tv/uk", "https://rakuten.today/blog/25-years-of-rakuten.html#:~:text=In%201997%2C%20the%20idea%20was,having%20to%20be%20tech%20savvy.","https://www.rakuten.com/"]
    
    var body: some View {
        TabView {
            ForEach(links, id: \.self) { item in

            ForEach(images, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 400, height: 250, alignment: .center)
                }
                    
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct AdView_Previews: PreviewProvider {
    static var previews: some View {
        // 4
        AdView()
            .previewLayout(.fixed(width: 200, height: 350))
    }
}
