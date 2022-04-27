//
//  ContentView.swift
//  tes
//
//  Created by Joris Villaseque on 25/04/2022.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
       
        VStack {
            NavigationView {
                NavigationLink(destination: rContentView()) {
                    Image("capote")
                          .resizable()
                          .frame(width: 200, height: 200)
                          .clipShape(Circle())
                          .overlay(Circle().stroke(Color.white, lineWidth: 4))
                          .shadow(radius: 10)
                          .offset(x: 0, y: 0)
                          .edgesIgnoringSafeArea(.all)

                }

        }
    }
}
}


struct accueilPreviews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

