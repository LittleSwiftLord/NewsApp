//
//  NewsService.swift
//  NewsApp
//
//  Created by Aidar Satindiev on 5/2/23.
//

import Foundation

final class NewsService {
    
    func fetchNews(_ id: Sources) async throws -> [NewsModel]? {
        
        
        let urlString = "https://newsapi.org/v2/everything?q=tesla&from=2023-01-05&sortBy=publishedAt&apiKey=fca4255c145b46b6a23c73315dc2898b"
        guard let url = URL(string: urlString) else { return nil }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        if var model = try? JSONDecoder().decode(NewsDataModel.self, from: data) {
            for i in 0..<(model.articles?.count ?? 0) {
                model.articles?[i].id = id
            }
            return model.articles
        }
        return []
    }
}
