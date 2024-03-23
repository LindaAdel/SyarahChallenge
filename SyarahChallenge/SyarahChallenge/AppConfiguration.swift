//
//  AppConfiguration.swift
//  ShoppingStore
//
//  Created by Linda adel on 12/11/2023.
//

import Foundation
class AppConfiguration {
    
    static var apiBaseURL: String  {
        
        guard let apiBaseURL = Bundle.main.object(forInfoDictionaryKey: "ApiBaseURL") as? String else {
            fatalError("apiBaseURL must not be empty in plist")
        }
        return apiBaseURL
    }
    
}
