//
//  LandamarkList.swift
//  Landmarks
//
//  Created by Gui  on 15/09/22.
//

import SwiftUI

struct LandamarkList: View {
    var body: some View{
        List{
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }
    }
}

struct LandamarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandamarkList()
    }
}
