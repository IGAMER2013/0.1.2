//
//  rContentView.swift
//  tes
//
//  Created by Joris Villaseque on 26/04/2022.
//

import SwiftUI
import MapKit
import Combine


struct rContentView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    @State private var region = MKCoordinateRegion()
    @State private var cancellable: AnyCancellable?
    
    private func setCurrentLocation() {
        cancellable = locationManager.$location.sink{ location in
            region = MKCoordinateRegion(center: location?.coordinate ?? CLLocationCoordinate2D(), latitudinalMeters: 500, longitudinalMeters: 500)
        }
    }
    
    var body: some View {
       
        VStack {
        if locationManager.location != nil {
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: nil)
                .edgesIgnoringSafeArea(.all)
        } else {
            Text("Locating user location...")
        }
        }
            .onAppear {
                setCurrentLocation()
            }
        
    }
}

struct rContentView_Previews: PreviewProvider {
    static var previews: some View {
        rContentView()
    }
}
