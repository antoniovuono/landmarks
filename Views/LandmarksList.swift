import SwiftUI

struct LandmarksList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        //Create de navigation
        NavigationView {
               List {
                   ForEach(filteredLandmarks) { landmark in
                       NavigationLink {
                           LandmarkDetail(landmark: landmark)
                       } label: {
                           LandmarkRow(landmark: landmark)
                       }
                   }
               }
               .navigationTitle("Landmarks")
        }
       
    }

}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
       LandmarksList()
    }
}
