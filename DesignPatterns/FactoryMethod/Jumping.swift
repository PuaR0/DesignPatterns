//
//  Jumping.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import Foundation

class Jumping: FactoryMethod {
    var name: String = "Jump"
    
    var type: String = "leg rxersize"
    
    func start() {
        print("let's jumping")
    }
    
    func stop() {
        print("stop jumping")
    }
}
