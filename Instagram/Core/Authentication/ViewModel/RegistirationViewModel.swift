
import Foundation

class RegistirationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""

    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
