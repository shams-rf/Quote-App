//
//  Quote.swift
//  Quote-App
//
//  Created by Shamsuddin Refaei on 23/06/2022.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id:UUID?
    var image:String
    var author:String
    var quote:String
    var moreQuotes:[String]
}
