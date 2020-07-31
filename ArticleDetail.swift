//
//  ArticleDetail.swift
//  QuickNews WatchKit Extension
//
//  Created by Raghav Sethi on 31/07/20.
//  Copyright © 2020 Raghav Sethi. All rights reserved.
//

import SwiftUI

struct ArticleDetail: View {
    var article: Article
    var body: some View {
        ScrollView  {
            VStack  {
                Text(article.title)
                    .font(.headline)
                Text("By \(article.author)")
                    .fontWeight(.ultraLight)
                Divider()
                Text(article.description)
                    .font(.caption)
                Text(article.content)
                
                Text("Published At: \(article.publishedAt)")
                
                Text("Read the full story at: \(article.link)")

            }
        }
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetail(article: Article(title: "Unhashed Podcast - The End of the Dollar Hegemony?", description: "On this week's episode of the Unhashed Podcast: Golden Sachs predicts a dollar dump, Ledger let's customer data slip, and big tech is coming for you!Weekly News Wrap Up:This week Goldman Sachs Group Inc. put a spotlight on the suddenly growing concern over in…", author: "adam@letstalkbitcoin.com (The LTB Network), The LTB Network", link: " https://letstalkbitcoin.com/blog/post/unhashed-podcast-the-end-dollar-hegemony?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+TheDailyBitcoinShow+%28Let%27s+Talk+Bitcoin+Network+Feed%29", imageLink: "https://letstalkbitcoin.com/files/blogs/8773-c93878524f7a56577a429df8f732cf0784a4fff304f0a86d2b0f2966149be106.jpg", publishedAt: "2020-07-30T18:55:00Z", content: "Click to download audio version\r\nOn this weeks episode of the Unhashed Podcast: Golden Sachs predicts a dollar dump, Ledger lets customer data slip, and big tech is coming for you!\r\nWeekly News Wrap … [+5093 chars]"))
    }
}
