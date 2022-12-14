//
//  Landmark.swift
//  Landmarks
//
//  Created by Gui  on 15/09/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coodinates
    
    var locationCoodinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coodinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    
}
