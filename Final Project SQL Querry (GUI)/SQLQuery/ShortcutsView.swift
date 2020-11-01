//
//  ShortcutsView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct ShortcutsView: View {
    @EnvironmentObject var model: CRMViewModel
    @State private var text = ""
    @State private var showQuery = false
    @State private var shortcut = ShortcutQuery(title: "", query: "")
    
    var body: some View {
        VStack(spacing: 8) {
            TextField("Search...", text: $text)
                .cornerRadius(5)
            ScrollView {
                ForEach(model.shortcutData.filter {
                    $0.title.lowercased().contains(text.lowercased()) || text == ""
                }
                ){ shortcut in
                    Button(action: {
                        self.shortcut = shortcut
                        showQuery = true
                    }) {
                        HStack {
                            Text(shortcut.title)
                                .modifier(headerModifier())
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        }
        .alert(isPresented: $showQuery) {
            Alert.showAlert(title: shortcut.title, message: shortcut.query)
        }
    }
}

struct ShortcutsView_Previews: PreviewProvider {
    static var previews: some View {
        ShortcutsView()
    }
}
