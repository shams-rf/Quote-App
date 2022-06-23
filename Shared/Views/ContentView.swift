//
//  ContentView.swift
//  Shared
//
//  Created by Shamsuddin Refaei on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        
        List(model.quotes) { q in
            
            Text(q.author)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
