//
//  BedroomFactory.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import Foundation

class BedroomFactory: AbstractFactoryProtocol {
    
    func createChaire() -> ChairProtocol {
        print("Chair for bedroom is create")
        return ChairBadroom()
    }
    
    func createTabel() -> TabelProtocol {
        print("Tabel for bedroom is create")
        return CofeTabelBedroom()
    }
    
    func creatSofa() -> SofaProtocol {
        print("Sofa for bedroom is create")
        return SofaBebroom()
    }
}
