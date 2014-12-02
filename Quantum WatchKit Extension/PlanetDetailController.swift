//
//  PlanetDetailController.swift
//  Quantum
//
//  Created by Ashley Robinson on 01/12/2014.
//  Copyright (c) 2014 Quantum. All rights reserved.
//

import Foundation
import WatchKit

class PlanetDetailController : WKInterfaceController {

    @IBOutlet weak var interfaceImage: WKInterfaceImage!
    @IBOutlet weak var planetLabel: WKInterfaceLabel!
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
        if let planetNumber = context as? Int {
            planetLabel.setText("Planet " + String(planetNumber + 1))
            interfaceImage.setImage(UIImage(named: "Planet " + String(planetNumber + 1)))
            
            setTitle("Planet " + String(planetNumber + 1))
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
        
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }
}