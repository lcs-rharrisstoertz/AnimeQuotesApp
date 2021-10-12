//
//  QuotesScreen.swift
//  AnimeQuotesApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-07.
//

import SwiftUI

struct QuotesScreen: View {
    
    @StateObject private var vm = QuotesViewModelImpl(
        service: QuotesServiceImpl()
    )
    
    
    var body: some View {
        
        Group {
            
            if vm.quotes.isEmpty{
                VStack(spacing: 8) {
                    ProgressView()
                    Text("Fetching Quotes")
                }
            } else {
                List {
                    ForEach(vm.quotes, id: \.anime) {item in
                        QuoteView(item: item)
                    }
                }
            }
        }
        .task {
            await vm.getRandomQuotes()
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
