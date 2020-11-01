//
//  ContentView.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/17/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: CRMViewModel
    @State private var selected = Selected.general
    
    var body: some View {
        VStack(spacing: 10) {
            Text("CRM System and Marketing")
                .font(.system(size: 26, weight: .bold, design: Font.Design.serif))
                .padding(5)
                .padding(.horizontal, 5)
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.green, .orange]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(20)
            
            Picker("", selection: $selected) {
                ForEach(Selected.allCases, id: \.self) { select in
                    Text(select.rawValue)
                }
            }
            .padding(.horizontal, 100)
            .pickerStyle(SegmentedPickerStyle())
            
            if selected == .general {
                GeneralView()
            } else {
                ShortcutsView()
            }
        }
        .padding()
//        .frame(width: 500)
    }
    
    enum Selected: String, CaseIterable {
        case general = "General"
        case short = "Shortcuts"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
