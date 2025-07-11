import Foundation

struct Book: Identifiable {
    let id: UUID
    let title: String
    let author: String
    let rank: Int
    let amazonProductURL: String

    // Custom initializer
    init(
        title: String,
        author: String,
        rank: Int,
        amazonProductURL: String
    ) {
        self.id = UUID()
        self.title = title
        self.author = author
        self.rank = rank
        self.amazonProductURL = amazonProductURL
    }
}


