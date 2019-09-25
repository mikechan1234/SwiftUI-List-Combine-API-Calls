//
//  QuoteRow.swift
//  QuoteFetcher
//
//  Created by Michael on 25/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import SwiftUI

struct QuoteRow: View {
	
//	var quote: Quote
	var quote: KanyeQuote
	
    var body: some View {
		
		VStack(alignment: .leading, spacing: 5) {
			
			Text(quote.quote).fixedSize(horizontal: false, vertical: true)
			Text(DateFormatter.quoteDateFormatter.string(from: quote.date)).font(.caption)
			
		}
		
    }
	
}

struct QuoteRow_Previews: PreviewProvider {
    static var previews: some View {
		QuoteRow(quote: .generateQuote())
    }
}
