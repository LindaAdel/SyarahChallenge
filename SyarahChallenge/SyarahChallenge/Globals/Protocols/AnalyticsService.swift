//
//  AnalyticsService.swift
//  SyarahChallenge
//
//  Created by Linda adel on 22/03/2024.
//

import Foundation

protocol AnalyticsService {
    func trackEvent(name: String, parameters: [String: Any]?)
}
