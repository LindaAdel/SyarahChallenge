//
//  CompositeAnalyticsService.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation

class CompositeAnalyticsService: AnalyticsService {
    private var analyticsServices: [AnalyticsService] = []

    func addAnalyticsService(_ service: AnalyticsService) {
        analyticsServices.append(service)
    }

    func removeAnalyticsService(_ service: AnalyticsService) {
        analyticsServices.removeAll{ ($0 as AnyObject) === (service as AnyObject) }
    }

    func trackEvent(name: String, parameters: [String: Any]?) {
        for service in analyticsServices {
            service.trackEvent(name: name, parameters: parameters)
        }
    }
}
