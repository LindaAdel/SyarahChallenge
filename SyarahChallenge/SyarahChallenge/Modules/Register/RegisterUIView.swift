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
    
    @Binding var show: Bool
    
    @Namespace private var animation
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HeaderView(show: $show, title: "Register")
                RegisterFieldsForm(name: $name, email: $email, password: $password, animation: animation)
                ActionButtonView(title: "Sign Up", action: {})
                
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}



