import SwiftUI

struct ListView: View {
    @State private var modelData = ModelData()

    var body: some View {
        NavigationView {
            List(modelData.books) { book in
                RowView(book: book)
            }
            .navigationTitle("NYT Books")
        }
        .task {
            await modelData.fetchBooks()
        }
    }
}



