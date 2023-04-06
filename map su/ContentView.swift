//
//  ContentView.swift
//  map su
//
//  Created by admin on 24/3/2566 BE.
//

import SwiftUI

struct ImageButton: View {
    let imageName2: String
    let destination: AnyView
    
    var body: some View {

        
        NavigationLink(destination: destination) {
            Image(imageName2)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
        }
    }
}

struct ContentView: View {
    
    let imageDestinations: [(String, AnyView)] = [
        ("image1", AnyView(classroom())),
        ("image2", AnyView(canteen())),
        ("image3", AnyView(dormitory())),
        ("image4", AnyView(NanBuilding())),
        ("image5", AnyView(Timetable()))
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack(spacing: 10) {
                    ForEach(0..<2) { index in
                        let (imageName, destination) = imageDestinations[index]
                        ImageButton(imageName2: imageName, destination: destination)
                    }
                }
                HStack(spacing: 10) {
                    ForEach(2..<4) { index in
                        let (imageName, destination) = imageDestinations[index]
                        ImageButton(imageName2: imageName, destination: destination)
                    }
                }
                
                HStack(spacing: 10) {
                    ForEach(4..<5) { index in
                        let (imageName, destination) = imageDestinations[index]
                        ImageButton(imageName2: imageName, destination: destination)
                    }
                }
                

            }
            .padding()
            .navigationTitle("หมวดหมู่")
            
            
            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




