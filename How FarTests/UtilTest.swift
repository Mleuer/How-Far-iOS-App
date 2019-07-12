//
//  UtilTest.swift
//  How FarTests
//
//  Created by Matt Leuer on 7/11/19.
//  Copyright © 2019 Matt Leuer. All rights reserved.
//

import Foundation
import XCTest
import CoreLocation
@testable import How_Far

class UtilTest: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    public func testCalculateDistanceShouldReturnDistanceBetweenTwoCoordinates() {
        let coordinate1 = CLLocationCoordinate2D(latitude: 32.248510, longitude: -110.843253)
        let coordinate2 = CLLocationCoordinate2D(latitude: 32.248818, longitude: -110.853060)
        
        let expectedDistanceTravelled = Measurement<UnitLength>(value: 3027.90, unit: UnitLength.feet)
        let distanceTravelled = calculateDistance(coordinate1: coordinate1, coordinate2: coordinate2)
        
        XCTAssertEqual(expectedDistanceTravelled.value, distanceTravelled.value, accuracy: 0.01)
        
    }
}
