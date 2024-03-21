//
//  RegisterFieldsForm.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI


struct RegisterFieldsForm: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var password: String
    var animation: Namespace.ID
    
    var body: some View {
        VStack(spacing: 5) {
            CustomTextFieldView(image: "person", title: "FULL NAME", value: $name, animation: animation)
            CustomTextFieldView(image: "envelope", title: "EMAIL", value: $email, animation: animation)
                .padding(.top, 5)
            CustomTextFieldView(image: "lock", title: "PASSWORD", value: $password, animation: animation)
                .padding(.top, 5)
        }
        .padding(.top)
    }
}

