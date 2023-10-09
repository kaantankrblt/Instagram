//
//  ProfileView.swift
//  Instagram
//
//  Created by Kaan Tan Karabulut on 2.10.2023.
//

import SwiftUI

struct ProfileView: View {
    let user: User

    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1

    var posts: [Post] {
        return Post.MOCK_POSTS.filter { $0.user?.username == user.username }
    }

    var body: some View {
        ScrollView {
            // Header
            ProfileHeaderView(user: user)

            // post grid view
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
