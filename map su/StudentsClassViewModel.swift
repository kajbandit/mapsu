//
//  StudentsClassViewModel.swift
//  map su
//
//  Created by admin on 5/4/2566 BE.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

class StudentsClassViewModel: ObservableObject {
    @Published var studentsClass: [StudentsClass] = []
    
    init() {
        fetchStudentsclass()
    }
    
    func fetchStudentsclass () {
        studentsClass.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("studentsclass")
        ref.getDocuments { Snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let Snapshot = Snapshot {
                for document in Snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? String ?? ""
                    let subject = data["subject"] as? String ?? ""
                    
                    let stdentsclass = StudentsClass(id: id, subject: subject)
                    self.studentsClass.append(stdentsclass)
                }
            }
        }
    }
}
