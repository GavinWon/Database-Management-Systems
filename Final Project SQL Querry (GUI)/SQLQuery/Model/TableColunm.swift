//
//  TableColunm.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Foundation

struct TableColunm: Identifiable, Hashable {
    var id = UUID()
    let crmTableName: String
    let colunm: String
}
