//
//  InputFieldsView.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI

struct LoginFieldsForm: View {
    @Binding var email: String
    @Binding var password: String
    var animation: Namespace.ID
    
    var body: some View {
        VStack(spacing: 5) {
            CustomTextFieldView(image: "envelope", title: "EMAIL", value: $email, animation: animation)
            CustomTextFieldView(image: "lock", title: "PASSWORD", value: $password, animation: animation)
        }
        .padding(.top)
    }
}

