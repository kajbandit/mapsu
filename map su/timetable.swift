//
//  timetable.swift
//  map su
//
//  Created by admin on 1/4/2566 BE.
//




import SwiftUI

struct Timetable: View {
    @EnvironmentObject var studentsClassViewModel: StudentsClassViewModel
    
    var body: some View {
        //        VStack {
        //            Text("เพิ่มตารางเรียน")
        //                .font(.largeTitle)
        //                .fontWeight(.bold)
        //                .padding(.top, 50)
        //
        //            HStack {
        //                TextField("ชื่อวิชา...", text: $subject)
        //                    .padding(.horizontal)
        //                    .textFieldStyle(RoundedBorderTextFieldStyle())
        //                    .frame(width: 230, height: 50)
        //                    .font(.title2)
        //
        //                TextField("วัน..", text: $day)
        //                    .padding(.horizontal)
        //                    .textFieldStyle(RoundedBorderTextFieldStyle())
        //                    .font(.title2)
        //            }
        //
        //            HStack {
        //                TextField("อาจารย์ผู้สอน..", text: $teacher)
        //                    .padding(.horizontal)
        //                    .textFieldStyle(RoundedBorderTextFieldStyle())
        //                    .font(.title2)
        //
        //
        //                TextField("รหัสวิชา..", text: $courseCode)
        //                    .padding(.horizontal)
        //                    .textFieldStyle(RoundedBorderTextFieldStyle())
        //                    .font(.title2)
        //
        //            }
        //
        //            NavigationLink(destination: Table(subject: subject, day: day, teacher: teacher, courseCode: courseCode)) {
        //                Text("บันทึก")
        //                    .padding()
        //                    .foregroundColor(.white)
        //                    .background(Color.orange)
        //                    .cornerRadius(10)
        //
        //
        //            }
        //            .padding(.top)
        //
        //            Spacer()
        //        }
        //        .padding()
        
        NavigationStack {
            ForEach(studentsClassViewModel.studentsClass, id: \.id) { index  in
                HStack {
                    Text(index.id)
                    Text(index.subject)
                }
                .padding()
//                Text(index.id)
//                Text(index.subject)
            }
        }
    }
}

struct Timetable_Previews: PreviewProvider {
    static var previews: some View {
        Timetable()
            .environmentObject(StudentsClassViewModel())
    }
}


//import SwiftUI
//
//struct Timetable: View {
//    @EnvironmentObject var studentClassViewModel: StudentsClassViewModel
//    let weekdays = ["รหัสวิชา", "800221-164", "800222-164", "800223-164", "802245-164", "802246-164", "802243-164"]
//
//
//    var body: some View {
//        VStack {
//            Text("เพิ่มตารางเรียน")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .padding(.top, 50)
//
//            Picker(selection: $courseCode, label: Text("รหัสวิชา")) {
//                ForEach(studentClassViewModel.studentsClass, id: \.self) { day in
//                    Text(day).tag(day)
//                }
//            }
//            .padding()
//            .frame(width: 250, height: 50)
//            .font(.title2)
//            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
//
////            TextField("ชื่อวิชา...", text: $subject)
////                .padding()
////                .textFieldStyle(RoundedBorderTextFieldStyle())
////                .font(.title2)
////
////            TextField("อาจารย์ผู้สอน..", text: $teacher)
////                .padding()
////                .textFieldStyle(RoundedBorderTextFieldStyle())
////                .font(.title2)
////
////            TextField("รหัสวิชา..", text: $courseCode)
////                .padding()
////                .textFieldStyle(RoundedBorderTextFieldStyle())
////                .font(.title2)
//
////            NavigationLink(destination: Table(subject: subject, day: day, teacher: teacher, courseCode: courseCode)) {
////                Text("บันทึก")
////                    .padding()
////                    .foregroundColor(.white)
////                    .background(Color.orange)
////                    .cornerRadius(10)
////
////
////            }
////            .padding(.top)
//
//            Spacer()
//        }
//        .padding()
//    }
//}
//
//struct Timetable_Previews: PreviewProvider {
//    static var previews: some View {
//        Timetable()
//    }
//}




