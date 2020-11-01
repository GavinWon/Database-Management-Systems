//
//  ActionsView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct ActionsView: View {
    @EnvironmentObject var model: CRMViewModel
    @State private var showQuery = false
    
    var body: some View {
        HStack(spacing: 20) {
            Spacer()
            Button(action:{
                model.reset()
            }) {
                Text("Reset 🗑")
            }
            Button(action: {
                showQuery = true
            }) {
                Text("Query 🔎")
                    .foregroundColor(Color.green.opacity(0.9))
            }
            .alert(isPresented: $showQuery) {
                Alert.showAlert(title: "Your query", message: model.generateQuery())
            }
            Spacer()
        }
    }
}

struct ActionsView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsView()
    }
}
