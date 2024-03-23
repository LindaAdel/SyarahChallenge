//
//  NetworkManager.swift
//  SyarahChallenge
//
//  Created by Linda adel on 23/03/2024.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static var sharedInstance = NetworkManager()
    
    static var IS_CONNECTED_TO_INTERNET: Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
