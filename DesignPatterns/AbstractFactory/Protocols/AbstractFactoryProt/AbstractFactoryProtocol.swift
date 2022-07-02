//
//  AbstractFactoryProtocol.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import Foundation

protocol AbstractFactoryProtocol {
    func createChaire() -> ChairProtocol
    func createTabel() -> TabelProtocol
    func creatSofa() -> SofaProtocol
}
