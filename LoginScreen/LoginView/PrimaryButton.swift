//
//  PrimaryButton.swift
//  LoginScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, minHeight: 48)
                .background(.tint, in: RoundedRectangle(cornerRadius: 12))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    PrimaryButton(title: "Log in") { }
        .padding()
}
