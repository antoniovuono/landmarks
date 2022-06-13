import Foundation
import SwiftUI
import CoreLocation

//We use codable because its easy to transfer data betwen the strcture and datafile
struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    //Declare images: use private because the user only want to see itself image
    private var imageName: String
    var image: Image {
        Image(imageName)
        }
    
    //Add cordinates property to the structure using nested coordinates:
        private var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
    }
}
