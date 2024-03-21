//
//  ActionButtonView.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI

struct ActionButtonView: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.heavy)
        }
        .padding()
        .padding(.top)
        .padding(.trailing)
    }
}


