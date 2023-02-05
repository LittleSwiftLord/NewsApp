//
//  NewsModel.swift
//  NewsApp
//
//  Created by Aidar Satindiev on 5/2/23.
//

import Foundation

struct NewsDataModel: Decodable {
    var status: String?
    var totalResults: Int?
    var articles: [NewsModel]?
}

struct NewsModel: Decodable {
    
    var id: Sources?
    
    var author: String?
    var title: String?
    var description: String?
    
    var url: URL?
    var urlToImage: URL?
    
    var publishedAt: String?
    var content: String?
    
    var publishedDate: String? {
        guard let date = publishedAt?.convertIntoDate() else { return "" }
        return date.format("MMM. dd, yyyy")
    }
}

// --------

enum Sources: String, Decodable, CaseIterable {
    
    case bbcNews = "News"

    
    var name: String {
        switch self {
        case .bbcNews: return "News"
        }
    }
}

