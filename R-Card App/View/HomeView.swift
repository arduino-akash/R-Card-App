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
                    
                    //                Section(header: HeaderView(text: "Latest")) {
                    //                    Text("Searching for \(searchText)")
                    //                                   .searchable(text: $searchText)
                    //                                   .navigationTitle("Searchable Example")
                    //                }
                    
//                    Text("WELCOME TO MOCK UI")
//                        .padding(.top, 100)
//                    //                .padding(.bottom, 40)
//
//                        .lineLimit(nil)
//                        .font(Font.system(size: 20, weight: .bold))
//                        .multilineTextAlignment(.leading)
//                        .foregroundStyle(
//                            LinearGradient(
//                                colors: [.red, .blue, .green, .yellow],
//                                startPoint: .leading,
//                                endPoint: .trailing
//                            )
//                        )
                    
                    SliderView()
                        .frame(height: 650, alignment: .trailing)
                        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 1, trailing: 10))
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.top, 165)

                    
                    
                    Text("""
Building whats never been built
""")
                    .lineLimit(nil)
                    .font(Font.system(size: 30, weight: .bold))
                    .padding()
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.red, .blue, .green, .yellow],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    
                    Text("Made With ❤️")
                        .lineLimit(nil)
                        .font(Font.system(size: 20, weight: .semibold))
                        .padding(.bottom, 30)
                    
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.green, .blue, .red, .purple],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                    Text("""
Everything you wanted to have in a single app.
This is just a dummy,
So don't take it serious
""")
                    .lineLimit(nil)
                    .font(Font.system(size: 15, weight: .light))
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .padding(.bottom, 80)
                    
                    .multilineTextAlignment(.center)
                    //                .foregroundStyle(
                    //                    LinearGradient(
                    //                        colors: [.green, .blue, .red, .purple],
                    //                        startPoint: .leading,
                    //                        endPoint: .trailing
                    //                    )
                    //                )
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
