//
//  User.swift
//  WhereAmIInRelationToWhereIStarted
//
//  Created by Matt Leuer on 7/8/19.
//  Copyright © 2019 Matt Leuer. All rights reserved.
//

import Foundation
import CoreLocation
import Repeat

class User: NSObject, CLLocationManagerDelegate {
    
    //MARK: Properties
    public var distanceFromStartingPoint: Measurement<UnitLength> {
        get {
            if startingPoint == nil || currentLocation == nil {
                return Measurement(value: 0, unit: UnitLength.feet)
            }
            return calculateDistance(coordinate1: startingPoint!.coordinate, coordinate2: currentLocation!.coordinate)
        }
    }
    var locationManager: CLLocationManager = CLLocationManager()
    var startingPoint: CLLocation? = nil
    var currentLocation: CLLocation? = nil
    
    override init() {
        super.init()
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    }
    
    public func markStartingPoint() {
        startingPoint = currentLocation
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations.last
    }

}
