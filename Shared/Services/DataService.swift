//
//  DataService.swift
//  Quote-App
//
//  Created by Shamsuddin Refaei on 23/06/2022.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        
        //parse local json file
        
        //get url path to json file
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        //check if pathString is nil, otherwise...
        guard pathString != nil else {
            
            return [Quote]()
        }
        
        //create url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            //create data object
            let data = try Data(contentsOf: url)
            
            //decode data with json decoder
            let decoder = JSONDecoder()
            
            do {
                
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                //add unique IDs
                for q in quoteData {
                    
                    q.id = UUID()
                }
                
                //return quotes
                return quoteData
            }
            catch{
                
                print(error)
            }
        }
        catch{
            
            print(error)
        }
        return [Quote]()
    }
}
