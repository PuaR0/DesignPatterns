//
//  FactoryMethod.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import Foundation

protocol FactoryMethod {
    var name: String { get }
    var type: String { get }
    
    func start()
    func stop()
}
