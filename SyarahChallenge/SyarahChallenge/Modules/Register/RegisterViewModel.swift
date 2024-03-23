//
//  RegisterViewModel.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import Foundation

class RegisterViewModel: ObservableObject {
    
    func createAUser(with email: String?, and password: String?, completion: @escaping ((Error?,Bool) -> Void)) {
        if let email = email , let password = password {
            FireBaseAuthManager.shared.createAUser(with: email, and: password) { error in
                if error != nil {
                    completion(error,false)
                }else {
                    print("register success")
                    AnalyticsManager.shared.trackEvent(name: "user_signup", parameters: ["email":email])
                    completion(nil,true)
                }
            }
        }
    }
}
