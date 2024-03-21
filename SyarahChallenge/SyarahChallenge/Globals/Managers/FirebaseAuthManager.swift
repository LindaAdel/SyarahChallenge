//
//  FirebaseAuthManager.swift
//  SyarahChallenge
//
//  Created by Linda adel on 21/03/2024.
//

import Foundation
import FirebaseAuth


class FireBaseAuthManager {
    
    static var shared = FireBaseAuthManager()
    private var currentUser :User!
    private var userID : String!
    private var userEmail : String!
  
  
    private init() {
       checkCurrentUserState()
   }
  
   private func checkCurrentUserState() {
       Auth.auth().addStateDidChangeListener { [self] auth, user in
           if let user = user {
               // User is signed in.
               currentUser = user
               userID = currentUser.uid
               userEmail = currentUser.email
             
           } else {
               // No user is signed in .
             
           }
       }
   }
  
   func createAUser(with email: String?, and password: String?, completion: @escaping ((Error?) -> Void)) {
       if let email = email , let password = password {
           Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
               if error == nil {
                  
                   completion(nil)
               } else {
                   completion(error)
               }
           }
       }
   }
  
   func signInUser(with email: String?, and password: String?, completion: @escaping ((Error?) -> Void)) {
       if let email = email , let password = password {
           Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
               if error == nil {
                  
                   completion(nil)
               } else {
                   if let error = error {
                       completion(error)
                   }
                  
               }
           }
       }
   }
  
   func signOutUser(completion: @escaping ((Error?) -> Void)) {
       let firebaseAuth = Auth.auth()
       do {
           try firebaseAuth.signOut()
           completion(nil)
       } catch let signOutError as NSError {
           completion(signOutError)
       }
   }
  
   func resetUserPassword(with email: String, completion: @escaping ((Error?) -> Void) ) {
       Auth.auth().sendPasswordReset(withEmail: email){ error in
           if error != nil {
               completion(error)
           }else {
               completion(nil)
           }
       }
   }
  

}




