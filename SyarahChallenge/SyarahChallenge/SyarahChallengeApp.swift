//
//  SyarahChallengeApp.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct SyarahChallengeApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
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
