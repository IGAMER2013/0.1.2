//
//  MKcoordinateREgion+Extensions.swift
//  tes
//
//  Created by Joris Villaseque on 26/04/2022.
//

import Foundation
import MapKit

extension MKCoordinateRegion {
    
    static var defaultRegion: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D.init(latitude: 29.627811, longitude: -95.902802), latitudinalMeters: 100, longitudinalMeters: 100)
    }
}
