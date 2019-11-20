//
//  Quote.swift
//  Pensamentos
//
//  Created by Guilherme Santos on 13/05/19.
//  Copyright © 2019 Guilherme Santos. All rights reserved.
//

import Foundation


struct Quote: Codable { //Encodable, Decodable
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return " ＂" + quote + "＂ "
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
}
