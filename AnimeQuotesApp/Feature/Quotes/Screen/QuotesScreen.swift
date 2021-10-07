//
//  QuotesScreen.swift
//  AnimeQuotesApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-07.
//

import SwiftUI

struct QuotesScreen: View {
    var body: some View {
        
        List {
            ForEach(Quote.dummyData, id: \.anime) {item in
                QuoteView(item: item)
            }
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
