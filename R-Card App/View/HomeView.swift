//
//  HomeView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 20/11/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            ScrollView{


                SliderView()
                    .frame(height: 650, alignment: .trailing)
                    .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 1, trailing: 10))
                    .padding(.top, 120)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)



                Text("R-Card".uppercased())
                    .font(Font.system(size: 30, weight: .bold))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.red, .blue, .green, .yellow],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .padding()
                
 
                Text("""
Building whats never been built with ❤️



""")
                .lineLimit(nil)
                .font(Font.system(size: 30, weight: .bold))
                .multilineTextAlignment(.leading)
                .padding()
                .foregroundStyle(
                    LinearGradient(
                        colors: [.red, .blue, .green, .yellow],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                Spacer()
            }
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
}

struct AHomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13")
            .environment(\.colorScheme, .dark)
    }
}
