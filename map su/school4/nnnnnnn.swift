//
//  recreation1.swift
//  map su
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct nnnnnnn: View {
    var body: some View {
        VStack (spacing: 30){
            Image("ตึกนันทนาการ")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .scaleEffect(1.5)
            Text("ตึกนันทนาการ")
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
            
            Image("map11")
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
                                                }
                                            })
            .navigationBarBackButtonHidden(true) // ซ่อนปุ่ม back button
        )
    }
}


struct nnnnnnn_Previews: PreviewProvider {
    static var previews: some View {
        nnnnnnn()
    }
}
