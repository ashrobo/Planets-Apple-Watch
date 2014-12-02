//
//  RootInterfaceController.swift
//  Quantum
//
//  Created by Ashley Robinson on 01/12/2014.
//  Copyright (c) 2014 Quantum. All rights reserved.
//

import WatchKit
import Foundation

class RootInterfaceController: WKInterfaceController {
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
        setTitle("Planets")
    }
    
    @IBAction func pageBasedButtonTapped() {
        let controllerNames = ["pageController", "pageController", "pageController", "pageController", "pageController"];
        let contexts = ["Planet 1", "Planet 2", "Planet 3", "Planet 4", "Planet 5"];
        presentControllerWithNames(controllerNames, contexts: contexts)
    }

    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
}