//
//  View+Extension.swift
//  SQLQuery
//
//  Created by Huy Ong on 9/19/20.
//

import SwiftUI

struct headerModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14, weight: .bold))
            .padding(4)
            .foregroundColor(.white)
            .background(Color.green.opacity(0.7))
            .cornerRadius(5)
    }
}
