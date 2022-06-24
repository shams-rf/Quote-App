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
        
        NavigationView {
            
            ScrollView {
                
                ForEach(model.quotes) { q in
                    
                    NavigationLink(destination: {
                        
                        DetailView(quote: q)
                    }, label: {
                        
                        ZStack {
                            
                            Image(q.image)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(10)
                            
                            VStack(alignment: .leading) {
                                
                                Text(q.quote)
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                
                                Text("-" + q.author)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)
                                    .padding()
                                
                            }.padding()
                            
                        }.padding()
                    })
                }.navigationTitle("Quotes")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
