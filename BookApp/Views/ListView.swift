import SwiftUI

struct ListView: View {
    
    let books = ModelData().books
    
    var body: some View {
        List {
            ForEach(books) { book in
                RowView(book: book)
            }
        }
        .navigationTitle("My Books")
    }
    
}
#Preview {
    ListView()
}


