//
//  RegisterUIView.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI

struct RegisterUIView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var name = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    @StateObject private var registerViewModel = RegisterViewModel()
    @Binding var show: Bool
    
    @Namespace private var animation
    
    var body: some View {
            VStack {
                HeaderView(show: $show, title: "Register")
                Spacer()
                RegisterFieldsForm(name: $name, email: $email, password: $password, animation: animation)
                Spacer()
                ActionButtonView(title: "Sign Up", action: RegisterUser)
                Spacer()
                    
            }
            .alert(isPresented: $showingError) {
                Alert(
                    title: Text("Error"),
                    message: Text(errorMessage),
                    dismissButton: .default(Text("OK"))
                )
            }
            
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    
    }
    
  private func RegisterUser() {
        registerViewModel.createAUser(with: email, and: password) { error in
            if let error = error {
                errorMessage = error.localizedDescription
                showingError = true
            }
        }
    }
}



