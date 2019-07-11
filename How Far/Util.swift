//
//  Util.swift
//  How Far
//
//  Created by Matt Leuer on 7/10/19.
//  Copyright © 2019 Matt Leuer. All rights reserved.
//

import Foundation
import CoreLocation

//Code credit Stack Overflow User: https://stackoverflow.com/users/1921/chuck

func calculateDistance(coordinate1: CLLocationCoordinate2D, coordinate2: CLLocationCoordinate2D) {
    var worldRadius = 6371; // Radius of the earth in km
    
    var differenceInLatitudeInDegrees =  Measurement(value: coordinate2.latitude - coordinate1.latitude, unit: UnitAngle.degrees)
    var differenceInLongitudeInDegrees = Measurement(value: coordinate2.longitude - coordinate1.longitude, unit: UnitAngle.degrees)
    
    var differenceInLatitudeInRadians = differenceInLatitudeInDegrees.converted(to: UnitAngle.radians)
    var differenceInLongitudeInRadians = differenceInLongitudeInDegrees.converted(to: UnitAngle.radians)
    var coordinate1Latitude = Measurement(value: coordinate1.latitude, unit: UnitAngle.degrees)
    coordinate1Latitude.convert(to: UnitAngle.radians)
    var coordinate2Latitude = Measurement(value: coordinate2.latitude, unit: UnitAngle.degrees)
    coordinate2Latitude.convert(to: UnitAngle.radians)
    var coordinate1Longitude = Measurement(value: coordinate1.longitude, unit: UnitAngle.degrees)
    coordinate1Longitude.convert(to: UnitAngle.radians)
    var coordinate2Longitude = Measurement(value: coordinate2.longitude, unit: UnitAngle.degrees)
    coordinate2Longitude.convert(to: UnitAngle.radians)
    
    

    var a = (sin(differenceInLatitudeInRadians.value / 2)) * (sin(differenceInLatitudeInRadians.value / 2)) + (cos(<#T##Double#>))
    
    var a =
        Math.sin(dLat/2) * Math.sin(dLat/2) +
        Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
        Math.sin(dLon/2) * Math.sin(dLon/2)

    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    var d = worldRadius * c; // Distance in km
    return d;
}

