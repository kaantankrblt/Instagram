
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        NavigationStack {
            VStack {
                // yukaridan asagi bastirmak icin
                Spacer()

                // Logo image
                Image("Instagram")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)

                // Text Fields
                VStack {
                    TextField("Enter you email", text: $email)
                        .textInputAutocapitalization(.none)
                        .modifier(IGTextFieldModifier())

                    SecureField("Enter you password", text: $password)
                        .textInputAutocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                }
                // forgot password button
                Button {
                    print("Show forgot password")
                }
                label: {
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

                // login butonu
                Button {
                    print("Login")
                }
                label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(.rect(cornerRadius: 8))
                }
                .padding(.vertical)

                // or yazan ayirac
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)

                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)

                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundStyle(.gray)

                // Continue with facebook
                HStack {
                    Image("Facebook")
                        .resizable()
                        .frame(width: 20, height: 20)

                    Text("Continue with Faceook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)

                // yukari tasidi
                Spacer()

                // ayirac yapti
                Divider()

                // en asagisi
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                }
                label: {
                    HStack(spacing: 4) {
                        Text("Dont have an account")

                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
