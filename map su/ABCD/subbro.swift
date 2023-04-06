//
//  subbro.swift
//  map su
//
//  Created by admin on 4/4/2566 BE.
//

import SwiftUI

struct subbro: View {

    var body: some View {


            VStack (spacing: 30){

                Image("อาคารเรียนรวม2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .scaleEffect(1.5)
                Text("อาคารเรียนรวม 2")
                    .offset(y: -20)
                    .offset(y: 50)
                    .font(.title)
                
                Text("วิชาที่เรียน")
                    .offset(y: -20)
                    .offset(y: 30)
                    .font(.system(size: 23))

                Spacer()
                ScrollView {
                    
                    Text("800221-164\nHISTORY OF ART AND DESIGN\nวัน พุธ เวลา 09:25-12:05\nอาจารย์ผู้สอน :อาจารย ์ขจรพล หิรัญโชติไพศาล")
                        .padding()
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("800222-164\nMATHEMATICS FOR DIGITAL TECHNOLOGY\nวัน พุธ เวลา 13:00-15:40\nอาจารย์ผู้สอน :อาจารย์วิทยา ทานะมัย")
                        .padding()
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("800223-164\nAPPLIED SCIENCE IN DIGITAL TECHNOLOGY FOR DESIGN\nวัน พุธ เวลา 16:40-19:20\nอาจารย์ผู้สอน :อาจารย์วิทยา ทานะมัย")
                        .padding()
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("สถานที่ตั้ง")
                        .offset(y: -10)
                        .offset(y: 25)
                        .font(.title)


                    
//                Text("800221-164")
//                    .font(.headline)
//                    .font(.title)
//                    .foregroundColor(.green)
////                            Spacer()
//                Text("HISTORY OF ART AND DESIGN")
//                    .font(.headline)
//                    .font(.title)
//                    .foregroundColor(.green)
//                Spacer()
//
//                    Text("วัน พุธ เวลา 09:25-12:05")
//                        .font(.headline)
//                        .font(.title)
//                        .foregroundColor(.black)
//                        .lineSpacing(20)
//                        .multilineTextAlignment(.center)
//
//                Text("อาจารย์ผู้สอน :อาจารย์ขจรพล หิรัญโชติไพศาล")
//                    .font(.headline)
//                    .font(.title)
//                    Spacer()
//               Text("")
//                    .font(.headline)
//                    .font(.title)
//                            Spacer()
                    
//                    Text("800222-164")
//                        .font(.headline)
//                        .font(.title)
//                        .foregroundColor(.green)
////    //                            Spacer()
//                    Text("MATHEMATICS FOR DIGITAL TECHNOLOGY")
//                        .font(.headline)
//                        .font(.title)
//                        .foregroundColor(.green)
//                    Spacer()
//
//                        Text("วัน พุธ เวลา 13:00-15:40")
//                            .font(.headline)
//                            .font(.title)
//                            .foregroundColor(.black)
//                            .lineSpacing(20)
//                            .multilineTextAlignment(.center)
//
//                    Text("อาจารย์ผู้สอน :อาจารย์วิทยา ทานะมัย")
//                        .font(.headline)
//                        .font(.title)
//                        Spacer()
//                    Text("")
//                        .font(.headline)
//                        .font(.title)
//                                Spacer()



                Image("map4")
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
}





struct subbro_Previews: PreviewProvider {
    static var previews: some View {
        subbro()
    }
}





