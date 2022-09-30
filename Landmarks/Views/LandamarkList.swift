//
//  LandamarkList.swift
//  Landmarks
//
//  Created by Gui  on 15/09/22.
//

import SwiftUI

struct LandamarkList: View {
    var body: some View{
        NavigationView{
            List(landmarks){ prov in
                NavigationLink{
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: prov)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
} 

struct LandamarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandamarkList()
    }
}
