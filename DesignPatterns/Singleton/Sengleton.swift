//
//  Sengleton.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import UIKit

class Settings {
    
    static let sharred = Settings()
    
    var color = UIColor.white
    var volumeLavel: Float = 1.0
    
    private init() {}
}
