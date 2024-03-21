//
//  HeaderView.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI

struct HeaderView: View {
    @Binding var show: Bool
    var title: String
    
    var body: some View {
        if show {
            HStack {
                Button(action: { show.toggle() }) {
                    Image(systemName: "arrow.left")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding()
            .padding(.leading)
        }
        HStack {
            Text(title)
                .font(.system(size: 40))
                .fontWeight(.heavy)
                .foregroundColor(.primary)
            
            Spacer(minLength: 0)
        }
        .padding()
        .padding(.leading)
    }
}
