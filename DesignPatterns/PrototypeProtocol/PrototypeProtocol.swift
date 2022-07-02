//
//  PrototypeProtocol.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import Foundation

class Person {
    var name = ""
}

var persone1 = Person()
//persone1.name = "Nico"

var persone2 = persone1
//persone2.name = "Loco"

class Person1 {
    var name = ""
    
    func clone() -> Person1 {
        let person = Person1()
        person.name = name
        return person
    }
}

var personP1 = Person1()
//personP1.name = "Jambo"

var person2P1 = personP1.clone()
//person2P1.name = "Jhony"


class Person2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func clone() -> Person2 {
        return Person2(name: self.name)
    }
}

var person1P2 = Person2(name: "Gnida")

var person2P2 = person2P1.clone()


// NSCopying

public protocol Copying {
    init(_ prototype: Self)
}

extension Copying {
    public func copy() -> Self {
        return type(of: self).init(self)
    }
}

class Person3: Copying {
    
    var name: String

    init(name: String) {
        self.name = name
    }
    
    required convenience init(_ prototype: Person3) {
        self.init(name: prototype.name)
    }
}

var person1P3 = Person3(name: "Bilko")

var person2P3 = person1P3.copy()
