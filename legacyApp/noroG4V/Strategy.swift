//
//  Strategy.swift
//  noroG4V
//
//  Created by Simon Laffan on 19/10/19.
//  Copyright © 2019 Simon Laffan. All rights reserved.
//

import Foundation

class Strategy {
    var title: String
    var description: String
    var url: URL
    var tags: [String]
    var rating: Int
    init(title: String, description: String, urlString: String, tags: [String]) {
        self.title = title
        self.description = description
        // Create url - set noro as default in case url is invalid
        self.url = URL(string: urlString) ?? URL(string: "https://www.noro.org.au")!
        self.tags = tags
        self.rating = -1
    }
}
