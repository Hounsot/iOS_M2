import SwiftUI

struct HomeView: View {
    let companies = [
        "Yandex", "VK (Vkontakte)", "Mail.Ru Group", "Kaspersky Lab", "Avito",
        "Tinkoff Bank", "Sberbank Technology", "ABBYY", "1C Company", "Rambler",
        "Gazprom Neft Digital Solutions", "Luxoft", "EPAM Systems", "Rozum Robotics",
        "Game Insight", "Nival", "JetBrains", "Qiwi", "Parallels", "Skolkovo Foundation",
        "Alawar Entertainment", "Acronis", "Crello", "Auriga", "IT Territory",
        "Playrix", "Ivideon", "Reksoft", "Artezio", "Axmor Software",
        "SimbirSoft", "iSpring Solutions", "Badoo", "G5 Entertainment", "Herocraft",
        "ZYTOV Design Studio", "Art. Lebedev Studio", "Redmadrobot", "FIRMA Agency", "Heads and Hands"
    ]
    let jobs = [
        "Специалист по дизайну цифровых музеев", "UX/UI дизайнер", "Графический дизайнер",
        "Интерактивный дизайнер", "Web-дизайнер", "Моушн-дизайнер"]
    var cards: [Card]

    init() {
        self.cards = generateCards(companies: companies, jobs: jobs)
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(Color(hex: "060606"))
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }

    var body: some View {
        
        NavigationView {
            List(cards) { card in
                CardView(card: card)
                    .listRowBackground(Color(hex: "060606"))
            }
            .navigationTitle("Вакансии")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Вакансии")
                        .foregroundColor(.white)
                }
            }
            .background(Color(hex: "060606"))
            .listStyle(PlainListStyle())
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .background(Color(hex: "060606"))
        .edgesIgnoringSafeArea(.all)
    }
}

func generateCards(companies: [String], jobs: [String]) -> [Card] {
    (1...10).map { index in
        Card(
            title: jobs.randomElement()!,
            vacancyType: ["Фултайм", "Парт-тайм", "Стажировка"].randomElement()!,
            companyName: companies.randomElement()!,
            salary: "\(Int.random(in: 40000...120000))₽"
        )
    }
}
