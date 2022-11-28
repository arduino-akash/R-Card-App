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
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    Section(header: HeaderView(text: "")) {
                        Text("Welcome to R-Cards")
                            .searchable(text: $searchText)
                            .navigationTitle("R-Cards")
                    }

                    SliderView()
                        .frame(width: 360, height: 600, alignment: .center)
                        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 1, trailing: 10))
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.top, 125)
                    
                    
                    Text("""
Building whats never been built
""")
                    .frame(width: 400,  alignment: .leading)
                    .padding(.leading, 40)
                    .lineLimit(nil)
                    .font(Font.system(size: 30, weight: .bold))
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.red, .blue, .green, .yellow],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    
                    Text("""
                         Live
                         it up!
                         """)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 40)
                    .font(Font.system(size: 90, weight: .bold))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.green, .blue, .red, .purple],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    
                    Text("Crafted with ❤️ in Rakuten India")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 40)
                        .padding(.bottom, 100)
                        .font(Font.system(size: 16, weight: .light))
                        .foregroundColor(.gray)
                    
                    Spacer()
                }.navigationTitle("R-Card")
                    .navigationBarTitleTextColor(Color.white)
            }
            .background(
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            .edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                self.pulsateAnimation.toggle()
            })
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct AHomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13")
            .environment(\.colorScheme, .dark)
    }
}
