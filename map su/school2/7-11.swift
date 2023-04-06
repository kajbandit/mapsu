//
//  7-11.swift
//  map su
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct __11: View {
    var body: some View {
        VStack (spacing: 30){
            Image("เซเว่น")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .scaleEffect(1.5)
            Text("เซเว่น")
                .offset(y: -20)
                .offset(y: 50)
                .font(.title)
  
            Spacer()
            Text("เปิด")
                .font(.headline)
                .offset(y: -5)
                .offset(x: -100)
                .font(.title)
//            Spacer()
            Text("ปิด")
                .font(.headline)
                .offset(y: -5)
                .offset(x: -100)
                .font(.title)
//            Spacer()
            
            Image("map8")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 300)
                .scaleEffect(1.0)
                .offset(y: -30)
        }
        .navigationBarHidden(true) // ซ่อน Navigation Bar
        .navigationBarItems(trailing:
                                Button(action: {}, label: {
                                                NavigationLink(destination: classroom()) {
                                                    Image("xmark")
                                                        .renderingMode(.original)
                                                }
                                            })
            .navigationBarBackButtonHidden(true) // ซ่อนปุ่ม back button
        )
    }
}
    

struct __11_Previews: PreviewProvider {
    static var previews: some View {
        __11()
    }
}
