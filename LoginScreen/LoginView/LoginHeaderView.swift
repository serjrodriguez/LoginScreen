//
//  LoginHeaderView.swift
//  LoginScreen
//
//  Created by Sergio Rodriguez on 13/10/26.
//

import SwiftUI

struct LoginHeaderView: View {
    var body: some View {
        VStack(spacing: 12) {
            RoundedRectangle(cornerRadius: 20)
                .fill(.tint.opacity(0.15))
                .frame(width: 72, height: 72)
                .overlay {
                    Image(systemName: "lock")
                        .font(.largeTitle)
                        .foregroundStyle(.tint)
                }

            VStack(spacing: 4) {
                Text("Welcome back")
                    .font(.title)
                    .fontWeight(.semibold)

                Text("Sign in to continue")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    LoginHeaderView()
}
