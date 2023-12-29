import SwiftUI

struct MainTabView: View {
    init() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().backgroundColor = .black
    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Вакансии", systemImage: "house.fill")
                }

            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person.fill")
                }
        }.accentColor(.green)
    }
}
