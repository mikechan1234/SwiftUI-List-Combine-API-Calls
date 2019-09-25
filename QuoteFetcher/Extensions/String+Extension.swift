//
//  String+Extension.swift
//  QuoteFetcher
//
//  Created by Michael on 25/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

extension String {
	
	static func randomAlphaNumericString(length: Int = 20) -> String {
		
		let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
		
		return String((0..<length).map { _ in
			
			letters.randomElement()!
			
		})

	}
	
}
