//
//  ArticleFetcher.swift
//  QuickNews WatchKit Extension
//
//  Created by Raghav Sethi on 31/07/20.
//  Copyright © 2020 Raghav Sethi. All rights reserved.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

public class ArticleFetcher: ObservableObject {
    @Published var articles: [Article] = []
    @Published var fetchError: Bool = false
    
    let myApiKey = "cc2a7155a3c6492280c30a3e113d9344"
    
    func fetchArticles()  {
        self.fetchError = false
        AF.request("http://newsapi.org/v2/top-headlines?country=us&apiKey="+myApiKey).responseJSON { (response) in
            print(response)
            switch response.result  {
            case .success(let value):
                let json = JSON(value)
                
                let articles = json["articles"].array ?? []
                var articleArray: [Article] = []
                
                for item in articles {
                    let title = item["title"].string ?? "Untitled Article"
                    let author = item["author"].string ?? "No author data"
                    let description = item["description"].string ?? "No description"
                    let link = item["url"].string ?? " "
                    let imageLink = item["urlToImage"].string ?? " "
                    let publishedAt = item["publishedAt"].string ?? "No data"
                    let content = item["content"].string ?? "No Content"
                    
                    let articleItem = Article(title: title, description: description, author: author, link: link, imageLink: imageLink, publishedAt: publishedAt, content: content)

                    articleArray.append(articleItem)

                }
                self.articles = articleArray
                
            case .failure(let error):
                print(error)
                self.fetchError = true
            }
        }
    }
    
}





























