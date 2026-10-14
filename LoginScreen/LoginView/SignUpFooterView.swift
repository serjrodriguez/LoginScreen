//
//  SignUpFooterView.swift
//  LoginScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct SignUpFooterView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Don't have an account?")
                .foregroundStyle(.secondary)

            Button("Sign up") {
                // Sign up action
            }
            .fontWeight(.medium)
        }
        .font(.callout)
    }
}

#Preview {
    SignUpFooterView()
}
