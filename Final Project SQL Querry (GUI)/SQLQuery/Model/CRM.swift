//
//  CRM.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Foundation

struct Table: Identifiable, Hashable {
    var id = UUID()
    let tableName: String
    let colunms: [String]
}

struct CRMColunm: Identifiable, Hashable {
    var id = UUID()
    let crmTableName: String
    let colunm: String
}
