struct NYTOverviewResponse: Decodable {
    let results: NYTResults
}

struct NYTResults: Decodable {
    let lists: [NYTList]
}

struct NYTList: Decodable {
    let books: [NYTBook]
}

struct NYTBook: Decodable {
    let title: String?
    let author: String?
    let rank: Int?
    let amazon_product_url: String?
}
