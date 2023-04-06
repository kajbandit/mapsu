//
//  SwiftUIView.swift
//  map su
//
//  Created by admin on 5/4/2566 BE.
//

import SwiftUI

struct subG: View {
    var body: some View {
        VStack (spacing: 30){
            Image("เทคโนโลยี")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .scaleEffect(1.5)
            Text("ตึกคณะเทคโนโลยีสารสนเทศ")
                .offset(y: -15)
                .offset(y: 50)
                .font(.title)
            
            Text("และการสื่อสาร")
                .offset(y: -20)
                .offset(y: 30)
                .font(.title)
            
            Text("วิชาที่เรียน")
                .offset(y: -20)
                .offset(y: 10)
                .font(.system(size: 23))
            
            
            Spacer()
            ScrollView {
                
                Text("802245-164\nDIGITAL MEDIA AND COMMUNICATION\nวัน อังคาร เวลา 13:55-15:40\nวัน อังคาร เวลา 15:45-17:30\nอาจารย์ผู้สอน :อาจารย์ ดร.อรวรรณ ประพฤติดี")
                    .padding()
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("802246-164\nWEB APPLICATION DEVELOPMENT\nวัน ศุกร์ เวลา 13:55-15:40\nวัน ศุกร์ เวลา 15:45-17:30\nอาจารย์ผู้สอน :อาจารย์ศรายุทธ ธิบดี\nอาจารย์ผู้สอน :อาจารย์สุวิทย์ ทรัพย์ศฤงคาร\nอาจารย์ผู้สอน :อาจารย์โกวิท มีบุญ")
                    .padding()
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("802243-164\nAPPLICATION DEVELOPMENT ON \nCOMMUNICATION DEVICE\nวัน เสาร์ เวลา 09:25-11:10\nวัน เสาร์ เวลา 11:15-13:00\nวัน เสาร์ เวลา 13:55-15:40\nวัน เสาร์ เวลา 15:45-17:30\nอาจารย์ผู้สอน :อาจารย์โกวิท มีบุญ\nอาจารย์ผู้สอน :อาจารย์ณัฐพงศ์ มาเสถียร")
                    .padding()
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("สถานที่ตั้ง")
                    .offset(y: -10)
                    .offset(y: 25)
                    .font(.title)
                
                
                Image("map2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 300)
                    .scaleEffect(1.0)
                    .offset(y: -30)
            }
            
            
            .navigationBarHidden(true) // ซ่อน Navigation Bar
            .navigationBarItems(trailing:
                                    Button(action: {
                
            }, label: {
                NavigationLink(destination: classroom()) {
                    Image("xmark")
                } // แสดง icon cancel
            })
                                        .navigationBarBackButtonHidden(true) // ซ่อนปุ่ม back button
            )
        }
    }
    
    struct subG_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView { // เพิ่ม NavigationView
                subG()
            }
        }
    }
}
