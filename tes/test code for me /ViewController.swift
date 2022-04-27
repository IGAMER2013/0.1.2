//
//  ViewController.swift
//  tes
//
//  Created by Joris Villaseque on 26/04/2022.
//

import UIKit
import MapKit
import CoreLocation
import SwiftUI


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var myMap: MKMapView!
    
    let manager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let myLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
    
        let region: MKCoordinateRegion = MKCoordinateRegion(center: myLocation, span: span)
     
      
        myMap.setRegion(region, animated: true)
        self.myMap.showsUserLocation = true
    }
    
}
