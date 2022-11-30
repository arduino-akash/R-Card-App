//
//  HomeView.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 20/11/22.
//

import SwiftUI
import LocalAuthentication


struct HomeView: View {
    
    // MARK: - PROPERTIES

    @State private var pulsateAnimation: Bool = false
    @State private var searchText = ""
    @State private var isUnlocked = false

    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    SliderView()
                        .frame(width: 360, height: 600, alignment: .center)
                        .listRowInsets(EdgeInsets(top: 0, leading: 10, bottom: 1, trailing: 10))
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        .padding(.top, 100)
                    
                    
                    Text("""
Building whats never been built
""")
                    .frame(width: 400,  alignment: .leading)
                    .padding(.leading, 40)
                    .padding(.top, 20)
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
                }
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
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        // check whether biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // it's possible, so go ahead and use it
            let reason = "We need to unlock your data."

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // authentication has now completed
                if success {
                    isUnlocked = true
                } else {
                    // there was a problem
                }
            }
        } else {
            // no biometrics
        }
    }
}

struct AHomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13")
            .environment(\.colorScheme, .dark)
    }
}
