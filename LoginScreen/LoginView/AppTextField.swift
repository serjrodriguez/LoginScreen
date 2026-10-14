//
//  AppTextField.swift
//  LoginScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct AppTextField: View {
    let title: String
    let placeholder: String
    let icon: String
    var isSecureField = false
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.secondary)

            HStack(spacing: 10) {
                Image(systemName: icon)
                    .foregroundStyle(.secondary)

                field

                if isSecureField {
                    Button("Show password", systemImage: "eye") {
                        // Toggle visibility (Forms phase)
                    }
                    .labelStyle(.iconOnly)
                    .foregroundStyle(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .frame(height: 44)
            .background {
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(Color(.separator), lineWidth: 1)
            }
        }
    }

    @ViewBuilder
    private var field: some View {
        if isSecureField {
            SecureField(placeholder, text: $text)
        } else {
            TextField(placeholder, text: $text)
        }
    }
}

#Preview {
    @Previewable @State var text = ""
    AppTextField(title: "Email", placeholder: "name@company.com", icon: "envelope", text: $text)
        .padding()
}
