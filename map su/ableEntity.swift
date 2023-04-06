//
//  ableEntity.swift
//  map su
//
//  Created by admin on 3/4/2566 BE.
//

import Foundation
import CoreData

public class TableEntity: NSManagedObject {

}

extension TableEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TableEntity> {
        return NSFetchRequest<TableEntity>(entityName: "TableEntity")
    }

    @NSManaged public var subject: String?
    @NSManaged public var day: String?
    @NSManaged public var teacher: String?
    @NSManaged public var courseCode: String?

}

