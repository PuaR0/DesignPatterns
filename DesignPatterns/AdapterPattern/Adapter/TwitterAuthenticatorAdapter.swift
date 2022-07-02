//
//  TwitterAuthenticatorAdapter.swift
//  DesignPatterns
//
//  Created by Алиага С on 2.7.2022.
//

import Foundation

class TwitterAuthenticatorAdapter: AuthenticationServisesProtocol {
    
    private var authenticator = TwitterAuthenticator()
    
    func login(email: String,
               password: String,
               succes: @escaping (User?, Token) -> Void,
               failure: @escaping (Error) -> Void) {
        
        authenticator.logIn(email: email,
                            password: password) { (currentUser, error) in
            guard let currentUser = currentUser else {
                failure(error!)
                return
            }
            
            let user = User(email: currentUser.email, password: currentUser.password)
            let token = Token(value: currentUser.token)
            succes(user, token)
            
        }
    }
}

