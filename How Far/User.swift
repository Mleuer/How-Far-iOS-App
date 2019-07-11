//
//  User.swift
//  WhereAmIInRelationToWhereIStarted
//
//  Created by Matt Leuer on 7/8/19.
//  Copyright © 2019 Matt Leuer. All rights reserved.
//

import Foundation
import CoreLocation

class User: NSObject, CLLocationManagerDelegate {
    
    //MARK: Properties
    var distance: Measurement<UnitLength> { get {return Measurement(value: 0, unit: UnitLength.feet)}}
    var locationManager: CLLocationManager = CLLocationManager()
    var startingPoint: CLLocation? = nil
    
    public func setStartingPoint() {
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        startingPoint = locations.last
        var startingCoordinate = startingPoint?.coordinate
    }

}
