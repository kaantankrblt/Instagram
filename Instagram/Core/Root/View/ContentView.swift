
import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registirationViewModel = RegistirationViewModel()
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registirationViewModel)
            }
            else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
