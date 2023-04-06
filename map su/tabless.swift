//
//  table.swift
//  map su
//
//  Created by admin on 1/4/2566 BE.
//

//import SwiftUI
//
//struct Table: View {
//    let subject: String
//    let day: String
//    let teacher: String
//    let courseCode: String
//
//    var body: some View {
//
//        VStack {
//            Text("ตารางเรียนของฉัน")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .padding(.top, 50)
//
//            Text("ชื่อวิชา: \(subject)")
//
//            Text("วัน: \(day)")
//
//            Text("อาจารย์ผู้สอน: \(teacher)")
//
//            Text("รหัสวิชา: \(courseCode)")
//
////            Rectangle()
////                .frame(width: 332, height: 88)
////                .cornerRadius(50)
////                .overlay(
////                    Text("ชื่อวิชา: \(subject)")
////                        .foregroundColor(Color.white)
////                )
////            Text("วัน: \(day)")
////                .foregroundColor(Color.white)
////            Text("อาจารย์ผู้สอน: \(teacher)")
////                .foregroundColor(Color.white)
////            Text("รหัสวิชา: \(courseCode)")
////                .foregroundColor(Color.white)
//
//
//
//            Spacer()
//        }
//        .padding()
//        .onAppear {
//            print("Subject: \(subject)")
//            print("Day: \(day)")
//            print("Teacher: \(teacher)")
//            print("Course code: \(courseCode)")
//        }
//    }
//}
//
//
//struct Table_Previews: PreviewProvider {
//    static var previews: some View {
//        Table(subject: "", day: "", teacher: "", courseCode: "")
//    }
//}

import SwiftUI

struct Table: View {
    let subject: String
    @EnvironmentObject var studentClassViewModel: StudentsClassViewModel
    let day: String
    let teacher: String
    let courseCode: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("ตารางเรียนของฉัน")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)

            VStack(alignment: .leading) {
                Text("ชื่อวิชา:")
                    .fontWeight(.semibold)
                Text(subject)
            }
            .padding(.vertical)

            VStack(alignment: .leading) {
                Text("วัน:")
                    .fontWeight(.semibold)
                Text(day)
            }
            .padding(.vertical)

            VStack(alignment: .leading) {
                Text("อาจารย์ผู้สอน:")
                    .fontWeight(.semibold)
                Text(teacher)
            }
            .padding(.vertical)

            VStack(alignment: .leading) {
                Text("รหัสวิชา:")
                    .fontWeight(.semibold)
                Text(courseCode)
            }
            .padding(.vertical)

            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("ย้อนกลับ")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            .padding(.top)

            Spacer()
        }
        .padding()
        .onAppear {
            print("Subject: \(subject)")
            print("Day: \(day)")
            print("Teacher: \(teacher)")
            print("Course code: \(courseCode)")
        }
    }
}


struct Table_Previews: PreviewProvider {
    static var previews: some View {
        Table(subject: "", day: "", teacher: "", courseCode: "")
    }
}
