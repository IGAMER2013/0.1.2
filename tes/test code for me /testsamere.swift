//
//  testsamere.swift
//  tes
//
//  Created by Joris Villaseque on 26/04/2022.
//

import SwiftUI
import MapKit


struct testsamere: View {
 
    
    @State private var locations = [Location]()
    @State private var mapRegion =
    
    
    
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 50, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))

    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $mapRegion, annotationItems: locations){ location in
                MapMarker(coordinate:CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude))
            }
                .ignoresSafeArea()
            Circle()
                .fill(.blue)
                .opacity(0.3)
                .frame(width: 100, height: 32)
        }
        
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button {
                    let newLocation = Location(id: UUID(), name: "New location", description: "", latitude: mapRegion.center.latitude, longitude: mapRegion.center.longitude)
                    locations.append(newLocation)
                    // create a new location
                } label: {
                    Image(systemName: "plus")
                }
                .padding()
                .background(.black.opacity(0.75))
                .foregroundColor(.white)
                .font(.title)
                .clipShape(Circle())
                .padding(.trailing)
                
                
            }
            
            
        }
        
        
    }
    

}
struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var description: String
    let latitude: Double
    let longitude: Double

    

struct testsamere_Previews: PreviewProvider {
    static var previews: some View {
        testsamere()
        
        
    }
    
    
    
}
    
    
    
}

