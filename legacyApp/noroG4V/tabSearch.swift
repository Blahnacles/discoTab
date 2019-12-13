//
//  tabSearch.swift
//  noroG4V
//
//  Created by Simon Laffan on 17/10/19.
//  Copyright © 2019 Simon Laffan. All rights reserved.
//

import Foundation

func tabSearch(searchTerm: String) -> URL{
    let urlDef = "https://www.ultimate-guitar.com/search.php?search_type=title&value="
    let urlString = urlDef+(searchTerm.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    guard let url = URL(string: urlString) else { return URL(string: urlDef)! }
    return url
}
