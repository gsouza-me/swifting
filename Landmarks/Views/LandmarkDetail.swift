//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Gui  on 29/09/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoodinate).frame(height: 300).ignoresSafeArea(edges: .top)
            CircleImage(imagem: landmark.image).offset(y: -150).padding(.bottom, -130)
            VStack (alignment: .leading) {
                Text(landmark.name)
                    .fontWeight(.black)
                    .foregroundColor(Color("Tblue"))
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                }
                Divider()
                Text("Sobre \(landmark.name)").font(.title2)
                Text(landmark.description).font(.body)
            }
            .padding(10)
            //Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[1])
    }
}
