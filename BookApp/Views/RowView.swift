import SwiftUI

struct RowView: View {
    var book: Book
    
    var body: some View {
            HStack(alignment: .top, spacing: 16) {
                book.image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 90)
                    .clipped()
                    .cornerRadius(8)
                    .shadow(radius: 2)

                VStack(alignment: .leading, spacing: 4) {
                    Text(book.title)
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text("by \(book.author)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    Text("\(book.yearOfIssue) - \(book.originalLanguage)")
                        .font(.caption)
                        .foregroundColor(.gray)

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
