//
//  InterfaceController.swift
//  Quantum WatchKit Extension
//
//  Created by Ashley Robinson on 01/12/2014.
//  Copyright (c) 2014 Quantum. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    let planets = ["Planet 1", "Planet 2", "Planet 3", "Planet 4", "Planet 5"];
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
        setTitle("Planets")
        
        loadTableData()
    }
    
    private func loadTableData() {
        self.table.setNumberOfRows(planets.count, withRowType:"PlanetRowController");
        for (index, planetName) in enumerate(planets) {
            let row = table.rowControllerAtIndex(index) as PlanetRowController;
            
            row.cellTitle.setText(planetName);
            
            // Image loaded from extension onto watch
            row.cellImage.setImage(UIImage(named:"Planet " + String(index + 1)))
        }
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        return rowIndex
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
