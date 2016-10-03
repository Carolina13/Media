//
//  vistaConfirmacion.swift
//  CreandoPizzaWatch
//
//  Created by Carolina Arnez on 10/2/16.
//  Copyright © 2016 Carolina Arnez. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmacion: WKInterfaceController {

    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let c=context as! configuracionPizza
        tamano.setText(c.tamanoPizza)
        masa.setText(c.masaPizza)
        queso.setText(c.tipoQueso)
        ingredientes.setText(c.ingredientes)
        
        // Configure interface objects here.
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
