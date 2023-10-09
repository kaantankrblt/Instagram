

import FirebaseAuth
import Foundation

class AuthService {
    @Published var userSession: FirebaseAuth.User?

    static let shared = AuthService()

    init() {
        self.userSession = Auth.auth().currentUser
    }

    func login(withemail email: String, password: String) async throws {}

    func createUser(email: String, password: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("debug failed to register user with error \(error.localizedDescription)")
        }
    }

    func loadUserData() async throws {}

    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}