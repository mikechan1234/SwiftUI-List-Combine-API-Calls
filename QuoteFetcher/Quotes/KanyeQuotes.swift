//
//  KanyeQuotes.swift
//  QuoteFetcher
//
//  Created by Michael on 25/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import Foundation

struct KanyeQuote: Codable, Identifiable {
	
	let quote: String
	let id = UUID()
	let date = Date()
	
	private enum CodingKeys: String, CodingKey {
		case quote
	}
	
}

//MARK: Generator
extension KanyeQuote {
	
	static func generateQuote() -> KanyeQuote {
	
		return KanyeQuote(quote: String.randomAlphaNumericString(length: 100))
		
	}
	
}
