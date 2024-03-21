//
//  RegisterViewModel.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import Foundation

class RegisterViewModel: ObservableObject {
    
    func createAUser(with email: String?, and password: String?, completion: @escaping ((Error?) -> Void)) {
        if let email = email , let password = password {
            FireBaseAuthManager.shared.createAUser(with: email, and: password) { error in
                if let error = error {
                    completion(error)
                }
            }
        }
    }
}