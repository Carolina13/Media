//
//  vistaMasa.swift
//  CreandoPizzaWatch
//
//  Created by Carolina Arnez on 9/29/16.
//  Copyright © 2016 Carolina Arnez. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasa: WKInterfaceController {

    @IBOutlet var elijaMasa: WKInterfaceLabel!
    var masa = configuracionPizza(t: "", m: "", q: "", i: "")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c=context as! configuracionPizza
        masa.tamanoPizza = c.tamanoPizza
        
        // Configure interface objects here.
    }
    @IBAction func siguientePaso2() {
        pushController(withName: "vistaQueso", context: masa)
    }

    @IBAction func tipoMasa(_ value: Float) {
        if value == 0{
            elijaMasa.setText("")
        }
        if value == 1 {
            masa.masaPizza = "Delgada"
        }
        if value == 2 {
            masa.masaPizza = "Crujiente"
        }
        if value == 3 {
            masa.masaPizza = "Gruesa"
        }
        elijaMasa.setText(masa.masaPizza)
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
