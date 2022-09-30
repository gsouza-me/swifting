//
//  ContentView.swift
//  Landmarks
//
//  Created by Gui  on 12/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      LandamarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
