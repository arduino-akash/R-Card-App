//
//  Authentication.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 28/11/22.
//

import SwiftUI

struct Authentication: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    NavigationLink(destination: HomeView()){
                    Button("Login") {
                        }
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    Button(action: {
                        print("Sign in with Apple")
                    }, label: {
                        SignInWithAppleButton()
                    })  .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.black)
                        .cornerRadius(10)
                    }
                }
            }.navigationBarHidden(true)
        }
    }

struct Authentication_Previews: PreviewProvider {
    static var previews: some View {
        Authentication()
    }
}
