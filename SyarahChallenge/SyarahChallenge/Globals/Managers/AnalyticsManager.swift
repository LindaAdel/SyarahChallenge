//
//  AnalyticsManager.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation


class AnalyticsManager {
    static let shared = AnalyticsManager()
    
    private let compositeAnalyticsService = CompositeAnalyticsService()
    
    private init() {
        configureAnalyticsServices()
    }
    
    func configureAnalyticsServices() {
        let firebaseAnalyticsEnabled = RemoteConfigManager.sharedInstance.bool(forKey: .enable_firebase_analytics)
        if firebaseAnalyticsEnabled {
            let firebaseAnalyticsService = FirebaseAnalyticsService()
            compositeAnalyticsService.addAnalyticsService(firebaseAnalyticsService)
        } else {
            compositeAnalyticsService.removeAnalyticsService(FirebaseAnalyticsService())
        }
        
        let mixpanelAnalyticsEnabled = RemoteConfigManager.sharedInstance.bool(forKey: .enable_mixpanel_analytics)
        if mixpanelAnalyticsEnabled {
            let mixpanelAnalyticsService = MixpanelAnalyticsService()
            compositeAnalyticsService.addAnalyticsService(mixpanelAnalyticsService)
        } else {
            compositeAnalyticsService.removeAnalyticsService(MixpanelAnalyticsService())
        }
        
        let amplitudeAnalyticsEnabled = RemoteConfigManager.sharedInstance.bool(forKey: .enable_amplitude_analytics)
        if amplitudeAnalyticsEnabled {
            let amplitudeAnalyticsService = AmplitudeAnalyticsService()
            compositeAnalyticsService.addAnalyticsService(amplitudeAnalyticsService)
        } else {
            compositeAnalyticsService.removeAnalyticsService(AmplitudeAnalyticsService())
        }
    }
    
    func trackEvent(name: String, parameters: [String: Any]?) {
        compositeAnalyticsService.trackEvent(name: name, parameters: parameters)
    }
}
