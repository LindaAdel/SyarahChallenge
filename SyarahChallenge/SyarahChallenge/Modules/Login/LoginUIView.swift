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
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            HeaderView(show: $show, title: "Login")
            LoginFieldsForm(email: $email, password: $password, animation: animation)
            ActionButtonView(title: "Log In", action: {})
            
            Spacer(minLength: 0)
            
            AccountPromptView(show: $show)
        }
    }
}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}
