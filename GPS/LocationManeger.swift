//
//  LocationManeger.swift
//  GPS
//
//  Created by 木村朋広 on 2024/03/23.
//

import SwiftUI

import MapKit

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    @Published var location = CLLocation()

    override init() {
        super.init()

        self.manager.delegate = self
        self.manager.requestWhenInUseAuthorization()
        self.manager.desiredAccuracy = kCLLocationAccuracyBest
        self.manager.distanceFilter = 2
        self.manager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager,
                           didUpdateLocations locations: [CLLocation]) {
        self.location = locations.last!
    }

}
