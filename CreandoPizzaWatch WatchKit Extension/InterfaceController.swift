//
//  InterfaceController.swift
//  CreandoPizzaWatch WatchKit Extension
//
//  Created by Carolina Arnez on 9/29/16.
//  Copyright © 2016 Carolina Arnez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var elijaTamano: WKInterfaceLabel!
    var tamano = configuracionPizza(t: "", m: "", q: "", i: "")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        
        
        // Configure interface objects here.
    }
    @IBAction func siguientePaso() {
        pushController(withName: "vistaMasa", context: tamano)
    }
    @IBAction func Tamano(_ value: Float) {
        if value == 0 {
            elijaTamano.setText("")
        }
        if value == 1 {
                tamano.tamanoPizza = "Chica"
        }
        if value == 2 {
            tamano.tamanoPizza = "Mediana"
        }
        if value == 3 {
            tamano.tamanoPizza = "Grande"
        }
        elijaTamano.setText(tamano.tamanoPizza)
        
                
                
            
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
