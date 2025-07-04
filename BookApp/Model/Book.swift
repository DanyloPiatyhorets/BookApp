import SwiftUI
import Foundation

struct Book: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var yearOfIssue: String
    var author: String
    var originalLanguage: String
    var shortContext: String
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
}

