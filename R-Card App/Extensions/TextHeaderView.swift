//
//  TextHeaderView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 14/11/22.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    var body: some View {
        HStack {
            Text(text).font(.avenirNextRegular(size: 16)).padding(EdgeInsets(top: 24, leading: 28, bottom: 24, trailing: 24))
        }
        .frame(width: UIScreen.main.bounds.width, height: 36, alignment: .leading)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(text: "Welcome to My App")
    }
}

extension Font {
    static func avenirNext(size: Int) -> Font {
        return Font.custom("Avenir Next", size: CGFloat(size))
    }
    
    static func avenirNextRegular(size: Int) -> Font {
        return Font.custom("AvenirNext-Regular", size: CGFloat(size))
    }
}
