//
//  QuoteModel.swift
//  Quote-App
//
//  Created by Shamsuddin Refaei on 23/06/2022.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init() {
        
        //create instance of DataService and get the data
        self.quotes = DataService.getLocalData()
    }
}
