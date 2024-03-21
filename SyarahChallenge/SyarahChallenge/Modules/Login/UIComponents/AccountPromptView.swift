//
//  AccountPromptView.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI

struct AccountPromptView: View {
    @Binding var show: Bool
       
       var body: some View {
           HStack(spacing: 8) {
               Text("Don't have an account?")
                   .fontWeight(.heavy)
                   .foregroundColor(.gray)
               
               NavigationLink(destination: RegisterUIView(show: $show), isActive: $show) {
                   Text("sign up")
                       .fontWeight(.heavy)
               }
           }
           .padding()
       }
}


