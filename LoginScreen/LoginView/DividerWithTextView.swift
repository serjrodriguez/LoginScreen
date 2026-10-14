//
//  DividerWithTextView.swift
//  LoginScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct DividerWithTextView: View {
    let text: String

    var body: some View {
        HStack {
            line
            Text(text)
                .font(.callout)
                .foregroundStyle(.secondary)
                .lineLimit(1)
                .fixedSize()
                .padding(.horizontal, 10)
            line
        }
    }

    private var line: some View {
        Rectangle()
            .fill(Color(.separator))
            .frame(height: 1)
    }
}

#Preview {
    DividerWithTextView(text: "or continue with")
        .padding()
}
