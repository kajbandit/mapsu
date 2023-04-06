//
//  2.swift
//  map su
//
//  Created by admin on 5/4/2566 BE.
//

import SwiftUI

struct accca: View {
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
                
                Spacer()
                ScrollView {
                    
                    Text("")
                        .font(.headline)
                        .font(.title)
                    Spacer()
                    
                    Text("800222-164")
                        .font(.headline)
                        .font(.title)
                        .foregroundColor(.green)
                    //    //                            Spacer()
                    Text("MATHEMATICS FOR DIGITAL TECHNOLOGY")
                        .font(.headline)
                        .font(.title)
                        .foregroundColor(.green)
                    Spacer()
                    
                    Text("วัน พุธ เวลา 13:00-15:40")
                        .font(.headline)
                        .font(.title)
                        .foregroundColor(.black)
                        .lineSpacing(20)
                        .multilineTextAlignment(.center)
                    
                    Text("อาจารย์ผู้สอน :อาจารย์วิทยา ทานะมัย")
                        .font(.headline)
                        .font(.title)
                    Spacer()
                    Text("")
                        .font(.headline)
                        .font(.title)
                    Spacer()
                    
                    
                    
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
    
    
    
    struct accca: PreviewProvider {
        static var previews: some View {
            accca()
        }
    }
}
