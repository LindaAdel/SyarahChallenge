//
//  AmplitudeAnalyticsService.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation
import  Amplitude

class AmplitudeAnalyticsService: AnalyticsService {
    
    func trackEvent(name: String, parameters: [String : Any]?) {
        Amplitude.instance().logEvent(name, withEventProperties: parameters )

    }
    
    
}
