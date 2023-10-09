//
//  LoginViewModel.swift
//  Instagram
//
//  Created by Kaan Tan Karabulut on 9.10.2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    func signIn() async throws {
        try await AuthService.shared.login(withemail: email, password: password)
    }
}
