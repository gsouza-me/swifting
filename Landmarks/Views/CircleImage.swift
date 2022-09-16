//
//  CircleImage.swift
//  Landmarks
//
//  Created by Gui  on 13/09/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View{
        Image("that")
            .resizable()
            .frame(width: 320, height: 320)
            .clipShape(Circle())
            .overlay{ Circle().stroke(.white, lineWidth: 7) }
            .shadow(radius:7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
