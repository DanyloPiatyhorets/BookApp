import SwiftUI

struct RowView: View {
    var book: Book
    
    var body: some View {
            HStack(alignment: .top, spacing: 16) {

                VStack(alignment: .leading, spacing: 4) {
                    Text(book.title)
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text("by \(book.author)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)


                }

                Spacer()
            }
            .padding(8)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.05), radius: 2, x: 0, y: 1)
        }}

#Preview {
    let books = ModelData().books
    return Group {
        RowView(book: books[0])
        RowView(book: books[1])
        
    }
}
