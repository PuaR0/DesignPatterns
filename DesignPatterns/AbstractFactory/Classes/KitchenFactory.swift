//
//  KitchenFactory.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import Foundation

class KitchenFactory: AbstractFactoryProtocol {
    
    func createChaire() -> ChairProtocol {
        print("Chair for Kitchen is create")
        return ChairKitchen()
    }
    
    func createTabel() -> TabelProtocol {
        print("Tabel for Kitchen is create")
        return KitchenTabel()
    }
    
    func creatSofa() -> SofaProtocol {
        print("Sofa for Kitchen is create")
        return KitchenSofa()
    }
}
