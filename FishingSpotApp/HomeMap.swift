//
//  HomeMap.swift
//  FishingSpotApp
//
//  Created by daisuke on 2020/11/14.
//

import SwiftUI
import MapKit

struct HomeMap: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
           MKMapView(frame: .zero)
       }

    func updateUIView(_ view: MKMapView, context: Context) {
           let coordinate = CLLocationCoordinate2D(
               latitude: 35.301286, longitude: 139.366868)
           
        let span = MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3)
           
           let region = MKCoordinateRegion(center: coordinate, span: span)
           
           view.setRegion(region, animated: true)
       }
    
}

struct HomeMap_Previews: PreviewProvider {
    static var previews: some View {
        HomeMap()
    }
}
