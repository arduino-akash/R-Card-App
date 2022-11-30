//
//  SignInWithAppleButton.swift
//  R-Card App
//
//  Created by Singh, Akash | RIEPL on 29/11/22.
//


import SwiftUI
import AuthenticationServices

struct SignInWithAppleButton: UIViewRepresentable {
  typealias UIViewType = ASAuthorizationAppleIDButton
    
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton(type: .signIn, style: .black)
    }
    
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {}
}
