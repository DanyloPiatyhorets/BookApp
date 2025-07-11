import Foundation
import Observation

@Observable
@MainActor
class ModelData {
    var books: [Book] = []

    func fetchBooks() async {
        let apiKey = Bundle.main.infoDictionary?["NYT_API_KEY"] as? String ?? ""
        guard let url = URL(string: "https://api.nytimes.com/svc/books/v3/lists/overview.json?api-key=\(apiKey)&published_date=2025-06-04") else {
            print("Invalid URL")
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedResponse = try JSONDecoder().decode(NYTOverviewResponse.self, from: data)

            self.books = decodedResponse.results.lists.flatMap { list in
                list.books.map { nytBook in
                    Book(
                        title: nytBook.title ?? "N/A",
                        author: nytBook.author ?? "N/A",
                        rank: nytBook.rank ?? 0,
                        amazonProductURL: nytBook.amazon_product_url ?? "N/A"
                    )
                }
            }

        } catch {
            print("Error fetching books: \(error)")
        }
    }
}



