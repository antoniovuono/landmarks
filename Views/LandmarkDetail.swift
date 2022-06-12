import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300) //When we specify only the height de width adjust form all screen
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                    .fontWeight(.bold)
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .fontWeight(.bold)
               
                }
                .font(.subheadline)
   
                
                Divider()
                
                HStack {
                    Text("About \(landmark.name)")
                        .font(.title2)
                        
                    Spacer()
                    
                    Text("Experiences")
                        .font(.footnote)
                        
                        
                }
                
                Text(landmark.description)
                
               
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
