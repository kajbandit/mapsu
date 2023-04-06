//
//  StudentTimeTableView.swift
//  map su
//
//  Created by admin on 5/4/2566 BE.
//

import SwiftUI

struct StudentTimeTableView: View {
    var studentsClass: StudentsClass
    
    var body: some View {
        VStack {
            Text(studentsClass.id)
            Text(studentsClass.subject)
        }
    }
}

struct StudentTimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        StudentTimeTableView(studentsClass: StudentsClass(id: "", subject: ""))
    }
}
