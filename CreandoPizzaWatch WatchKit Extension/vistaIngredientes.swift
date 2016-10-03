//
//  vistaIngredientes.swift
//  CreandoPizzaWatch
//
//  Created by Carolina Arnez on 9/30/16.
//  Copyright © 2016 Carolina Arnez. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngredientes: WKInterfaceController {

    @IBOutlet var ingredientes: WKInterfaceLabel!
    var labelIngredientes = configuracionPizza(t: "", m: "", q: "", i: "")
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c = context as! configuracionPizza
        labelIngredientes.tamanoPizza = c.tamanoPizza
        labelIngredientes.masaPizza = c.masaPizza
        labelIngredientes.tipoQueso = c.tipoQueso
        
        // Configure interface objects here.
    }
    
    @IBAction func sliderIngredientes(_ value: Float) {
        if value == 0 {
            ingredientes.setText("")
        }
        if value == 1 {
            labelIngredientes.ingredientes = ("Jamon")
        }
        if value == 2 {
            labelIngredientes.ingredientes = ("Pepperoni")
        }
        if value == 3 {
            labelIngredientes.ingredientes = ("Pavo")
        }
        if value == 4 {
            labelIngredientes.ingredientes = ("Salchicha")
        }
        if value == 5 {
            labelIngredientes.ingredientes = ("Aceituna")
        }
        if value == 6 {
            labelIngredientes.ingredientes = ("Cebolla")
        }
        if value == 7 {
            labelIngredientes.ingredientes = ("Pimenton")
        }
        if value == 8 {
            labelIngredientes.ingredientes = ("Pina")
        }
        if value == 9 {
            labelIngredientes.ingredientes = ("Anchoa")
        }
        ingredientes.setText(labelIngredientes.ingredientes)
    }
    @IBAction func SiguientePaso4() {
        pushController(withName: "vistaConfirmacion", context: labelIngredientes)
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
