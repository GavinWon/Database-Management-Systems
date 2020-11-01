//
//  CRMViewModel.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import Combine

class CRMViewModel: ObservableObject {
    
    @Published var selectedDatas: [Table] = []
    @Published var selectColunms: [TableColunm] = []
    
    @Published var countQuery = ""
    @Published var showCount = false
    
    @Published var whereQuery = ""
    @Published var showCondition = false
    
    @Published var groupByQuery = ""
    @Published var showGroupBy = false
    
    @Published var showHaving = false
    @Published var havingQuery = ""
    
    @Published var showOrderBy = false
    @Published var orderByQuery = ""
    
    let data: [Table] = Table.data
    let shortcutData: [ShortcutQuery] = ShortcutQuery.data
}

extension CRMViewModel {
    func generateQuery() -> String {
        var tables = ""
        selectedDatas.forEach { tables.append("\($0.tableName), ")}
        tables = String(tables.dropLast(2))
        
        var columns = ""
        selectColunms.forEach { columns.append("\($0.crmTableName).\($0.colunm), ")}
        columns = String(columns.dropLast(2))
        
        var string = """
        SELECT
            \(columns)\(showCount ? "COUNT(\(countQuery))" : "")
        FROM
            \(tables)
        """
        if showCondition {
            string.append("""
            \nWHERE
                \(whereQuery)
            """)
        }
        if showGroupBy {
            string.append("""
            \nGROUP BY
                \(groupByQuery)
            """)
        }
        if showHaving {
            string.append("""
            \nHAVING
                \(havingQuery)
            """)
        }
        if showOrderBy {
            string.append("""
            \nORDER BY
                \(orderByQuery)
            """)
        }
        
        return string
    }
    
    func reset() {
        selectedDatas = []
        selectColunms = []
        showCount = false
        showCondition = false
        showGroupBy = false
        showOrderBy = false
        showHaving = false
        countQuery = ""
        whereQuery = ""
        havingQuery = ""
        groupByQuery = ""
        orderByQuery = ""
    }
}
