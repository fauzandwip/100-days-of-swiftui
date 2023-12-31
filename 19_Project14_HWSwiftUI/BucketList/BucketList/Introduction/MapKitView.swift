//
//  MapKitView.swift
//  BucketList
//
//  Created by Fauzan Dwi Prasetyo on 11/07/23.
//

import MapKit
import SwiftUI

struct LocationMap: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapKitView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations = [
        LocationMap(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        LocationMap(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
    //            MapMarker(coordinate: location.coordinate)
                
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        Text("\(location.name)")
                    } label: {
                        Circle()
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
        //                    .onTapGesture {
        //                        print("Tapped on \(location.name)")
        //                    }
                    }
                }
            }
        }
    }
}

struct MapKitView_Previews: PreviewProvider {
    static var previews: some View {
        MapKitView()
    }
}
