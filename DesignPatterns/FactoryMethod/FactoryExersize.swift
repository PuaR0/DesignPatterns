//
//  FactoryExersize.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import Foundation

enum Exersises {
case jumping, squarts
}

class FactoryExersize {
    
    static let defaultFactory = FactoryExersize()
    
    func crateExersise(name: Exersises) -> FactoryMethod {
        switch name {
        case .squarts: return Squatrs()
        default: return Jumping()
        }
    }
    
}
