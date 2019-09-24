//
//  Quote.swift
//  QuoteFetcher
//
//  Created by Michael on 19/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import Foundation

//{
//	   "quote": "Do not worry if you have built your castles in the air. They are where they should be. Now put the foundations under them.",
//	   "length": "122",
//	   "author": "Henry David Thoreau",
//	   "tags": [
//		 "dreams",
//		 "inspire",
//		 "worry"
//	   ],
//	   "category": "inspire",
//	   "date": "2016-11-21",
//	   "title": "Inspiring Quote of the day",
//	   "background": "https://theysaidso.com/img/bgs/man_on_the_mountain.jpg",
//	   "id": "mYpH8syTM8rf8KFORoAJmQeF"
//	 }

struct Quote: Codable, Identifiable {
	
	var id: String
	let quote: String
	let length: Int
	let author: String
	let tags: [String]
	let category: String
	let date: Date
	let title: String
	let background: URL
	
}
