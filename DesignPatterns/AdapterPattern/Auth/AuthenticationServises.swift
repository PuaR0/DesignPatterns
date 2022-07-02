//
//  AuthenticationServises.swift
//  DesignPatterns
//
//  Created by Алиага С on 2.7.2022.
//

import Foundation

public struct User {
    
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}

public protocol AuthenticationServisesProtocol {
    func login(email: String,
               password: String,
               succes: @escaping (User?, Token) -> Void,
               failure: @escaping (Error) -> Void
    )
}
