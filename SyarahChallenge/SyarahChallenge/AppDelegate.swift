//
//  AppDelegate.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation
import FirebaseCore
import Amplitude
import Mixpanel


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        Mixpanel.initialize(token: "45f530e90229876e861c885e00a11ad6", trackAutomaticEvents: false)
        Mixpanel.mainInstance().loggingEnabled = true
        Amplitude.instance().defaultTracking.sessions = true
        Amplitude.instance().initializeApiKey("e37b035a8bd973a61266fc14035762e")
        RemoteConfigManager.sharedInstance.loadingDoneCallback = {}
        return true
    }
}
