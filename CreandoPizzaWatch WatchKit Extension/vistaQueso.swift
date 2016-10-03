//
//  vistaQueso.swift
//  CreandoPizzaWatch
//
//  Created by Carolina Arnez on 9/30/16.
//  Copyright © 2016 Carolina Arnez. All rights reserved.
//

import WatchKit
import Foundation


class vistaQueso: WKInterfaceController {

    @IBOutlet var tipoQueso: WKInterfaceLabel!
    var Queso = configuracionPizza(t: "" , m: "", q: "", i: "")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! configuracionPizza
        Queso.masaPizza = c.masaPizza
        Queso.tamanoPizza = c.tamanoPizza
        
        // Configure interface objects here.
    }

    @IBAction func sliderQueso(_ value: Float) {
        if value == 0 {
            tipoQueso.setText("")
        }
        if value == 1 {
            Queso.tipoQueso = ("Mozarela")
        }
        if value == 2 {
            Queso.tipoQueso = ("Cheddar")
        }
        if value == 3 {
            Queso.tipoQueso = ("Parmesano")
        }
        if value == 4 {
            Queso.tipoQueso = ("Sin queso")
        }
        tipoQueso.setText(Queso.tipoQueso)
    }
    
    @IBAction func SiguientePaso3() {
        pushController(withName: "vistaIngredientes", context: Queso)
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
