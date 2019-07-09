//
//  User.swift
//  WhereAmIInRelationToWhereIStarted
//
//  Created by Matt Leuer on 7/8/19.
//  Copyright © 2019 Matt Leuer. All rights reserved.
//

import Foundation
import CoreLocation

class User {
    
    //MARK: Properties
    var distance: Measurement<UnitLength> { get {return Measurement(value: 0, unit: UnitLength.feet)}}
    var locationManager: CLLocationManager = CLLocationManager()
    var startingPoint: CLLocation
    
    init() {
        startingPoint = locationManager.location!
    }

    
    
    
    
}
