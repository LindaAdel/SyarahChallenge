//
//  SyarahChallengeApp.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI

@main
struct SyarahChallengeApp: App {
    var body: some Scene {
            WindowGroup {
                NavigationView{
                    LoginUIView()
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                }
            }
        }
}
