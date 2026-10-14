//
//  SocialButton.swift
//  LoginScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct SocialButton: View {
    let title: String
    let icon: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Label(title, systemImage: icon)
                .font(.callout)
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity, minHeight: 44)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(Color(.separator), lineWidth: 1)
                }
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    HStack(spacing: 12) {
        SocialButton(title: "Apple", icon: "apple.logo") { }
        SocialButton(title: "Google", icon: "person") { }
    }
    .padding()
}
