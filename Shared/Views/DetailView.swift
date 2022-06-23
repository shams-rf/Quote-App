//
//  DetailView.swift
//  Quote-App
//
//  Created by Shamsuddin Refaei on 23/06/2022.
//

import SwiftUI

struct DetailView: View {
    
    var quote:Quote
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Text(quote.author)
                    .font(.title)
                    .fontWeight(.bold)
                
                Divider()
                
                VStack(alignment: .leading) {
                    
                    ForEach (quote.moreQuotes, id: \.self) { q in
                        
                        Text(q)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .padding(.vertical, 5)
                    }
                }
            }.padding(.horizontal)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuoteModel()
        
        DetailView(quote: model.quotes[0])
    }
}
