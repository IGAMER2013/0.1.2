//
//  1.swift
//  tes
//
//  Created by Joris Villaseque on 25/04/2022.
//


import MapKit
import SwiftUI
import CoreLocation



struct accueil: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: MapDefaults.latitude, longitude: MapDefaults.longitude),
        span: MKCoordinateSpan(latitudeDelta: MapDefaults.zoom, longitudeDelta: MapDefaults.zoom))
    
    let manager = CLLocationManager()
    
  
        
    private enum MapDefaults {
        static let latitude = 2.991
        static let longitude = 2.948
        static let zoom = 0.398
    }
        
 
    var body: some View {
        ZStack {
           
            Map(coordinateRegion: $region,
                interactionModes: .all,
                showsUserLocation: true)
            
            
        }
            .edgesIgnoringSafeArea(.all)
    }
    
    
}




