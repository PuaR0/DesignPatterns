//
//  ViewController.swift
//  DesignPatterns
//
//  Created by Алиага С on 30.6.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var chair: ChairProtocol?
    var tabel: TabelProtocol?
    var sofa: SofaProtocol?
    
    var singleton = Settings.sharred.volumeLavel
    
    var exersiseArrey = [FactoryMethod]()

    override func viewDidLoad() {
        super.viewDidLoad()
        singleton = 2.0
        createExersise(exName: .jumping)
    }
    
    func createExersise(exName: Exersises) {
        let newExersise = FactoryExersize.defaultFactory.crateExersise(name: exName)
        exersiseArrey.append(newExersise)
    }
    
    func runExersise() {
        for method in exersiseArrey {
            method.start()
            method.stop()
        }
    }
    
    @IBAction func kitchenOrder() {
        chair = KitchenFactory().createChaire()
        tabel = KitchenFactory().createTabel()
        sofa = KitchenFactory().creatSofa()
    }
    @IBAction func bedroomOrder() {
        chair = BedroomFactory().createChaire()
        tabel = BedroomFactory().createTabel()
        sofa = BedroomFactory().creatSofa()
    }
    
    @IBAction func catalogButton(_ sender: Any) {
        
        let controller = CatalogBuilder().setTitle("catalog").build()
        self.present(controller, animated: true, completion: nil)
        
    }
    

}

