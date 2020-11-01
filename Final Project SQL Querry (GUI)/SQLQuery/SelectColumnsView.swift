//
//  SelectColumnsView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct SelectColumnsView: View {
    @EnvironmentObject var model: CRMViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("📎 Select Colunms From")
                    .modifier(headerModifier())
                Spacer()
            }
            Divider()
            ForEach(model.selectedDatas) { selectedData in
                HStack {
                    Text("\(selectedData.tableName):")
                        .foregroundColor(.secondary)
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(selectedData.colunms, id: \.self) { colunm in
                                Button(action: {
                                    if model.selectColunms.contains(TableColunm(crmTableName: selectedData.tableName, colunm: colunm)) {
                                        model.selectColunms.removeAll(where: { $0 == TableColunm(crmTableName: selectedData.tableName, colunm: colunm) })
                                    } else {
                                        model.selectColunms.append(TableColunm(crmTableName: selectedData.tableName, colunm: colunm))
                                    }
                                }) {
                                    Text(colunm)
                                }
                            }
                        }
                    }
                }
                Divider()
            }
            HStack {
                Text("Selected: ")
                    .bold()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(model.selectColunms, id: \.self) { selectedColunm in
                            Button(action: {
                                model.selectColunms.removeAll(where: { $0 == selectedColunm })
                            }) {
                                Text(selectedColunm.colunm)
                                    .foregroundColor(.red)
                            }
                            .padding(.vertical)
                        }
                    }
                }
            }
            .padding(.leading)
            .background(Color.white)
            .cornerRadius(5)
            .shadow(radius: 1)
        }
    }
}

struct SelectColumnsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectColumnsView()
    }
}
