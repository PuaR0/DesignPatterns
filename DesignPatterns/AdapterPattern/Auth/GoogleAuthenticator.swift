//
//  GoogleAuthebticator.swift
//  DesignPatterns
//
//  Created by Алиага С on 2.7.2022.
//

import Foundation

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}

public class GoogleAuthenticator {
    
    public func logIn(
        email: String,
        password: String,
        complettion: @escaping (GoogleUser?, Error?) -> Void
    ) {
        let token = "spetial-token-value"
        
        let user = GoogleUser(email: email, password: password, token: token)
        
        complettion(user, nil)
    }
    
}
