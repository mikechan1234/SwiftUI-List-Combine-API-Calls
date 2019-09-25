//
//  Quote.swift
//  QuoteFetcher
//
//  Created by Michael on 19/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import Foundation

//{
//	"quote": "Do not worry if you have built your castles in the air. They are where they should be. Now put the foundations under them.",
//	"length": "122",
//	"author": "Henry David Thoreau",
//	"tags": [
//	 "dreams",
//	 "inspire",
//	 "worry"
//	],
//	"category": "inspire",
//	"date": "2016-11-21",
//	"title": "Inspiring Quote of the day",
//	"background": "https://theysaidso.com/img/bgs/man_on_the_mountain.jpg",
//	"permalink" : "https://theysaidso.com/img/bgs/man_on_the_mountain.jpg",
//	"id": "mYpH8syTM8rf8KFORoAJmQeF"
//}


//"[{\"tags\":[\"courage\",\"inspire\",\"risk\",\"tod\"],\"permalink\":\"https:\\/\\/theysaidso.com\\/quote\\/mohamad-ali-he-who-is-not-courageous-enough-to-take-risks-will-accomplish-nothin\",\"background\":\"https:\\/\\/theysaidso.com\\/img\\/bgs\\/man_on_the_mountain.jpg\",\"date\":\"2019-09-25\",\"title\":\"Inspiring Quote of the day\",\"length\":\"78\",\"quote\":\"He who is not courageous enough to take risks will accomplish nothing in life.\",\"author\":\"Mohamad Ali\",\"id\":\"ifuqTGVbNWPSJIzhrGQakQeF\",\"category\":\"inspire\"}]"
struct Quote: Codable, Identifiable {
	
	var id: String
	let quote: String
	let length: String
	let author: String
	let tags: [String]
	let category: String
	let date: Date
	let title: String
	let permalink: URL
	let background: URL
	
}

extension Quote {
	
	static func generateQuote() -> Quote {
		
		return Quote(id: "\(Int.random(in: 0...10000000))", quote: String.randomAlphaNumericString(length: 100), length: "20", author: "", tags: [], category: "", date: Date(), title: String.randomAlphaNumericString(length: 10), permalink: URL(string: "https://google.com")!, background: URL(string: "https://google.com")!)
		
	}
	
}


