//
//  MixpanelAnalyticsService.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation
import Mixpanel

class MixpanelAnalyticsService: AnalyticsService {
    
    func trackEvent(name: String, parameters: [String : Any]?) {
        let mixpanelParameter = (parameters ?? [:]) as? Properties
        Mixpanel.mainInstance().track(event: name, properties: mixpanelParameter)
    }
    
    
}
