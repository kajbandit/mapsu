//
//  TableEntity+CoreDataProperties.swift
//  map su
//
//  Created by admin on 5/4/2566 BE.
//
//

import Foundation
import CoreData


extension TableEntity: Identifiable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TableEntity> {
        return NSFetchRequest<TableEntity>(entityName: "TableEntity")
    }

    @NSManaged public var id: String?
    @NSManaged public var subject: String?

}

