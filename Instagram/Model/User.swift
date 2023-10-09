
import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Kaantnkrblt", profileImageUrl: "Profile", fullname: "Kaan Tan Karabulut", bio: "Dark Knight", email: "kaan@hotmail.com"),
        .init(id: NSUUID().uuidString, username: "venom", profileImageUrl: "Kore1", fullname: "Kaan", bio: "Dark Knight", email: "venom@hotmail.com"),
        .init(id: NSUUID().uuidString, username: "ironman", profileImageUrl: "Kore2", fullname: "Tan Karabulut", bio: "Dark Knight", email: "ironman@hotmail.com"),
        .init(id: NSUUID().uuidString, username: "blackpanther", profileImageUrl: "Kore3", fullname: "Tan", bio: "Dark Knight", email: "blackpanther@hotmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "Facebook", fullname: "Karabulut", bio: "Dark Knight", email: "spiderman@hotmail.com")
    ]
}
