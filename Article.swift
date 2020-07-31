//
//  Article.swift
//  QuickNews WatchKit Extension
//
//  Created by Raghav Sethi on 31/07/20.
//  Copyright © 2020 Raghav Sethi. All rights reserved.
//

import Foundation

struct Article: Hashable, Identifiable  {
    public var id: String
    public var title: String
    public var description: String
    public var author: String
    public var link: String
    public var imageLink: String
    public var publishedAt: String
    public var content: String
    
    init(title: String, description: String, author: String, link: String, imageLink: String, publishedAt: String, content: String) {
        self.id = UUID().uuidString
        self.title = title
        self.description = description
        self.author = author
        self.link = link
        self.imageLink = imageLink
        self.publishedAt = publishedAt
        self.content = content
    }
}
