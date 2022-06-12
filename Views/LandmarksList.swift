import SwiftUI

struct LandmarksList: View {
    var body: some View {
        //Create de navigation
        NavigationView {
            //Return a list from a component
            List(landmarks) { landmark in
                //Create a link where we want to go to visit
                NavigationLink {
                    //Call the view who we want to go
                    LandmarkDetail(landmark: landmark)
                } label: {
                    //Label where we click to go to the place
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
         ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
             LandmarksList()
                 .previewDevice(PreviewDevice(rawValue: deviceName))
                 .previewDisplayName(deviceName)
         }
     }
}
