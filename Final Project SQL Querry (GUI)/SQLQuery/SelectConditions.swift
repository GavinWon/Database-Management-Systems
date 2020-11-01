//
//  SelectConditions.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct SelectConditions: View {
    @EnvironmentObject var model: CRMViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("🧹 Select Conditions")
                    .modifier(headerModifier())
                Spacer()
            }
            
            HStack {
                Toggle("COUNT:", isOn: $model.showCount)
                TextField("...", text: $model.countQuery)
                    .disabled(!model.showCount)
            }
            
            HStack {
                Toggle("WHERE:", isOn: $model.showCondition)
                TextField("...", text: $model.whereQuery)
                    .disabled(!model.showCondition)
            }
            
            HStack {
                Toggle("GROUP:", isOn: $model.showGroupBy)
                TextField("...", text: $model.groupByQuery)
                    .disabled(!model.showGroupBy)
            }
            
            HStack {
                Toggle("HAVING", isOn: $model.showHaving)
                TextField("...", text: $model.havingQuery)
                    .disabled(!model.showHaving)
            }
            
            HStack {
                Toggle("ORDER:", isOn: $model.showOrderBy)
                TextField("...", text: $model.orderByQuery)
                    .disabled(!model.showOrderBy)
            }
            
        }
    }
}

struct SelectConditions_Previews: PreviewProvider {
    static var previews: some View {
        SelectConditions()
    }
}
