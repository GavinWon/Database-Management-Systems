//
//  Alert+Extension.swift
//  SQLQuery
//
//  Created by Huy Ong on 10/1/20.
//

import SwiftUI

extension Alert {
    static func showAlert(title: String, message: String) -> Alert {
        Alert(title: Text(title), message: Text(message),
              primaryButton: .cancel(Text("Copy"), action: {
                NSPasteboard.general.clearContents()
                NSPasteboard.general.setString(message, forType: .string)
                NSWorkspace.shared.launchApplication("SQLPro for MSSQL")
              }),
              secondaryButton: .cancel())
    }
}
