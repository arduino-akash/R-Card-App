//
//  Auth.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 29/11/22.
//

import SwiftUI

struct Auth: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    @State var textFieldColor : Color = .secondary
    
    
    var body: some View {
        NavigationView {
            ZStack {
//                Color.blue
//                    .ignoresSafeArea()
//                Circle()
//                    .scale(1.7)
//                    .foregroundColor(.white.opacity(0.15))
//                Circle()
//                    .scale(1.35)
//                    .foregroundColor(.white)

                VStack {
                    Image("rakuten1")
                        .resizable()
                        .frame(width: 180, height: 130, alignment: .center)
                    
//                    Text("Login")
//                        .foregroundColor(.black)
//                        .font(.largeTitle)
//                        .bold()
//                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
//                        .foregroundColor(.black)
                        .textCase(.lowercase)
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                        .foregroundColor(textFieldColor)
                        .onChange(of: username) { value in
                            textFieldColor = value == "" ? .red : .green
                        }
                        
                    
                    SecureField("Password", text: $password)
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: AppView().navigationBarBackButtonHidden(true), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }            .background(
                Image("image")
                    .aspectRatio(contentMode: .fill)
            )
            .edgesIgnoringSafeArea(.all)
        }.navigationBarBackButtonHidden(true)
            
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "akash" {
            wrongUsername = 0
            if password.lowercased() == "akash" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct Auth_Previews: PreviewProvider {
    static var previews: some View {
        Auth()
    }
}
