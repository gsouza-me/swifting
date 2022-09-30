//
//  CircleImage.swift
//  Landmarks
//
//  Created by Gui  on 13/09/22.
//

import SwiftUI

struct CircleImage: View {
    var imagem: Image
    
    var body: some View{
        imagem
            .clipShape(Circle())
            .overlay{ Circle().stroke(.white, lineWidth: 7) }
            .shadow(radius:7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imagem: Image("that"))
    }
}
