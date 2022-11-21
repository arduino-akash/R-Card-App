//
//  CircleImage.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 21/11/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("rakuten")
            .frame(width: 200, height: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
