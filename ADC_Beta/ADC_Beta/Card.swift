import Foundation

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var vacancyType: String
    var companyName: String
    var salary: String
}
