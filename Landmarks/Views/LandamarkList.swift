//
//  LandamarkList.swift
//  Landmarks
//
//  Created by Gui  on 15/09/22.
//

import SwiftUI

struct LandamarkList: View {
    var body: some View{
        List(landmarks){ prov in
            LandmarkRow(landmark: prov)
        }
            
    }
} 

struct LandamarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandamarkList()
    }
}
