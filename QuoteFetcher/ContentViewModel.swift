//
//  ContentViewModel.swift
//  QuoteFetcher
//
//  Created by Michael on 19/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
	
	let urlSession = URLSession(configuration: URLSessionConfiguration.default)
	var quotes: [Quote] = []
	
	init() {
		
	}
	
}

extension ContentViewModel {
	
	func getQuote() {
		
		guard let quoteURL = URL(string: "https://quotes.rest/qod") else {
			
			return
			
		}
		
		urlSession.dataTaskPublisher(for: quoteURL).map { (data, response) -> Data in

			return data
			
		}.tryMap { (data) -> [String: Any] in
			
			guard let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
//				throw
				return [:]
			} 
			
			return json
			
//			let decoder = JSONDecoder()
//			decoder.dateDecodingStrategy = .formatted(.quoteDateFormatter)
//			decoder.decode(Quote.self, from: data)
			
			
		}
		
	}
	
}
