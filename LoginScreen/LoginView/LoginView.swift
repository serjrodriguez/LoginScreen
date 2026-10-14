//
//  LoginView.swift
//  LoginScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct LoginView: View {
    @State private var emailText = ""
    @State private var passText = ""

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                LoginHeaderView()
                    .padding(.bottom, 32)

                VStack(spacing: 14) {
                    AppTextField(
                        title: "Email",
                        placeholder: "name@company.com",
                        icon: "envelope",
                        text: $emailText
                    )

                    AppTextField(
                        title: "Password",
                        placeholder: "••••••••",
                        icon: "lock",
                        isSecureField: true,
                        text: $passText
                    )

                    Button("Forgot password?") {
                        // Forgot password action
                    }
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }

                PrimaryButton(title: "Log in") {
                    // Log in action
                }
                .padding(.top, 20)

                DividerWithTextView(text: "or continue with")
                    .padding(.vertical, 20)

                HStack(spacing: 12) {
                    SocialButton(title: "Apple", icon: "apple.logo") { }
                    SocialButton(title: "Google", icon: "person") { }
                }
                .padding(.bottom, 32)

                SignUpFooterView()
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 24)
        }
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview("Light") {
    LoginView()
}

#Preview("Dark") {
    LoginView()
        .preferredColorScheme(.dark)
}
