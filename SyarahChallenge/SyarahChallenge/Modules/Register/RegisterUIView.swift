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
    @State private var signedup = false
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
            .background(
                        NavigationLink(
                            destination: ContentView(),
                            isActive: $signedup,
                            label: EmptyView.init
                        )
                    )
            
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    
    }
    
  private func RegisterUser() {
        registerViewModel.createAUser(with: email, and: password) { error,success in
            if !success, let error = error {
                errorMessage = error.localizedDescription
                showingError = true
            }else {
                signedup = true
            }
        }
    }
}



