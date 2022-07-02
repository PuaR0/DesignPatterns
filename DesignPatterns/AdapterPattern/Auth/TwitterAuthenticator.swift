//
//  TwitterAuthenticator.swift
//  DesignPatterns
//
//  Created by Алиага С on 2.7.2022.
//

import Foundation

public struct TwitterUser {
    public var email: String
    public var password: String
    public var token: String
}

public class TwitterAuthenticator {
    
    public func logIn(
        email: String,
        password: String,
        complettion: @escaping (TwitterUser?, Error?) -> Void
    ) {
        let token = "spetial-token-value"
        
        let user = TwitterUser(email: email, password: password, token: token)
        
        complettion(user, nil)
    }
    
}
