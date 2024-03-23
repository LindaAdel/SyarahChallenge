//
//  NetworkManager.swift
//  ShoppingStore
//
//  Created by Linda adel on 12/11/2023.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static var sharedInstance = NetworkManager()
    
    static var IS_CONNECTED_TO_INTERNET: Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}
