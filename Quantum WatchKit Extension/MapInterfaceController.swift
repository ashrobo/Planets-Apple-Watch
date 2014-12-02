//
//  MapInterfaceController.swift
//  Quantum
//
//  Created by Ashley Robinson on 02/12/2014.
//  Copyright (c) 2014 Quantum. All rights reserved.
//

import WatchKit
import Foundation

class MapInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var map: WKInterfaceMap!
    
    override init(context: AnyObject?) {
        super.init(context: context)
        
        setTitle("Map")
        
        let coordinate = CLLocationCoordinate2DMake(37.331793, -122.029584)
        self.setMapToCoordinate(coordinate);
    }
    
    private func setMapToCoordinate(coordinate: CLLocationCoordinate2D) {
        let span =  MKCoordinateSpanMake(1.0, 1.0)
        let region = MKCoordinateRegionMake(coordinate, span)
        let mapPoint = MKMapPointForCoordinate(coordinate)
        
        map.setMapRect(MKMapRectMake(mapPoint.x, mapPoint.y, span.latitudeDelta, span.longitudeDelta))
        map.setCoordinateRegion(region)
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
}