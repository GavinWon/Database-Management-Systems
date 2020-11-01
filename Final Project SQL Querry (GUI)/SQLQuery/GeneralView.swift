//
//  GeneralView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct GeneralView: View {
    @EnvironmentObject var model: CRMViewModel
    
    var body: some View {
        VStack {
            SelectDataView()
            Divider()
            SelectColumnsView()
            Divider()
            SelectConditions()
            Divider()
            ActionsView()
            Spacer()
        }
    }
}

struct GeneralView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
