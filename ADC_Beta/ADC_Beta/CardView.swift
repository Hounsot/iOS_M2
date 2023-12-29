import SwiftUI

struct CardView: View {
    var card: Card

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Компания: \(card.companyName)")
                .font(.subheadline)
                .foregroundColor(.white)
            Text(card.title)
                .font(.headline)
                .foregroundColor(.white)
            Text("Зарплата: \(card.salary)")
                .font(.subheadline)
                .foregroundColor(.white)
            VacancyTypeView(vacancyType: card.vacancyType)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(hex: "1F1F23"))
        .cornerRadius(10)
    }
}

struct VacancyTypeView: View {
    var vacancyType: String

    var body: some View {
        Text(vacancyType)
            .padding(8)
            .foregroundColor(.white)
            .background(backgroundColor(for: vacancyType))
            .cornerRadius(5)
    }

    func backgroundColor(for type: String) -> Color {
        switch type {
        case "Фултайм":
            return Color(hex: "4FE75D")
        case "Стажировка":
            return Color(hex: "92FF38")
        case "Парт-тайм":
            return Color(hex: "47E8CE")
        default:
            return Color.gray
        }
    }
}
