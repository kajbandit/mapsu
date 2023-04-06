//
//  SwiftUIView.swift
//  map su
//
//  Created by admin on 26/3/2566 BE.
//

import SwiftUI


struct ImageButton: View {
    let imageName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 170, height: 170)
        }
    }
}


struct SwiftUIView: View {
    
    let imageNames = ["image1", "image2", "image3", "image4"]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                HStack(spacing: 10) {
                    ImageButton(imageName: imageNames[0]) {

                    }
                    ImageButton(imageName: imageNames[1]) {
                        
                    }
                }
                HStack(spacing: 10) {
                    ImageButton(imageName: imageNames[2]) {
                      
                    }
                    ImageButton(imageName: imageNames[3]) {
                        
                    }
                }
                
                Button("ตารางเรียน") {
                }
                .frame(width: 200, height: 30)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            }
            .padding()
            .navigationTitle("หมวดหมู่")
        }
    }
}




struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
