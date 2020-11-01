//
//  SelectDataView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct SelectDataView: View {
    @EnvironmentObject var model: CRMViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("📁 Select Data From")
                    .modifier(headerModifier())
                
                Spacer()
            }
            Divider()
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    Text("Data: ")
                        .foregroundColor(.secondary)
                    ForEach(model.data) { data in
                        Button(action: {
                            if model.selectedDatas.contains(data) {
                                model.selectedDatas.removeAll(where: { $0 == data })
                            } else {
                                model.selectedDatas.append(data)
                            }
                        }) {
                            Text(data.tableName)
                            
                        }
                        .padding(.bottom, 5)
                    }
                    
                }
            }
            
            HStack {
                Text("Selected: ")
                    .bold()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(model.selectedDatas, id: \.self) { selectedData in
                            Button(action: {
                                model.selectedDatas.removeAll(where: { $0 == selectedData })
                            }) {
                                Text(selectedData.tableName)
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

struct SelectDataView_Previews: PreviewProvider {
    static var previews: some View {
        SelectDataView()
    }
}
