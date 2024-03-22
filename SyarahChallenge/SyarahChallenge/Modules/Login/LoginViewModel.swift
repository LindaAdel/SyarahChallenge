//
//  LoginViewModel.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    func signInUser(with email: String?, and password: String?, completion: @escaping ((Error?) -> Void)) {
        if let email = email , let password = password {
            FireBaseAuthManager.shared.signInUser(with: email, and: password) { error in
                if error != nil {
                    completion(error)
                }else {
                    print("login success")
                    AnalyticsManager.shared.trackEvent(name: "login", parameters: [:])
                }
            }
        }
    }
   
    
}
