//
//  ContentView.swift
//  Landmarks
//
//  Created by Gui  on 12/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300).ignoresSafeArea(edges: .top)
            CircleImage().offset(y: -150).padding(.bottom, -130)
            VStack (alignment: .leading) {
                Text("Hello, Darling.")
                    .fontWeight(.black)
                    .foregroundColor(Color("Tblue"))
                    .font(.title)
                HStack {
                    Text("That`s interesting...")
                        .font(.subheadline)
                    Spacer()
                    Text("i think so.")
                }
                Divider()
                Text("Lorem ipsum dolor").font(.title2)
                Text("Dolor ipsum lorem").font(.body)
            }
            .padding(10)
            Spacer()
        }
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
