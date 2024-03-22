//
//  FirebaseAnalyticsService.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation
import FirebaseAnalytics

class FirebaseAnalyticsService: AnalyticsService {
    
    func trackEvent(name: String, parameters: [String : Any]?) {
        Analytics.logEvent(name, parameters: parameters)
    }
    
    
}
