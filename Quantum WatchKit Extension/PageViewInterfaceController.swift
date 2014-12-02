//
//  PageViewInterfaceController.swift
//  Quantum
//
//  Created by Ashley Robinson on 01/12/2014.
//  Copyright (c) 2014 Quantum. All rights reserved.
//

import Foundation
import WatchKit

class PageViewInterfaceController: WKInterfaceController {

    @IBOutlet weak var image: WKInterfaceImage!
    @IBOutlet weak var label: WKInterfaceLabel!
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
        if let planetName = context as? String {
            setTitle(planetName)
            label .setText(planetName)
            image.setImage(UIImage(named: planetName))
        }
        
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