//
//  LoginUIView.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI

struct LoginUIView: View {
    @State private var email = ""
    @State private var password = ""
    @Namespace private var animation
    @State private var show = false
    @State private var errorMessage = ""
    @State private var showingError = false
    @StateObject private var loginViewModel = LoginViewModel()
    var body: some View {
        VStack {
            Spacer()
            HeaderView(show: $show, title: "Login")
            LoginFieldsForm(email: $email, password: $password, animation: animation)
            ActionButtonView(title: "Log In", action: LoginUser)
            Spacer()
            AccountPromptView(show: $show)
        }
        .alert(isPresented: $showingError) {
            Alert(
                title: Text("Error"),
                message: Text(errorMessage),
                dismissButton: .default(Text("OK"))
            )
        }
        
    }
    
    private func LoginUser() {
        loginViewModel.signInUser(with: email, and: password) { error in
              if let error = error {
                  errorMessage = error.localizedDescription
                  showingError = true
              }
          }
      }
}

