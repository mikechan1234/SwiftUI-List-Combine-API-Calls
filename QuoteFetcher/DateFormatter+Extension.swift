//
//  DateFormatter+Extension.swift
//  QuoteFetcher
//
//  Created by Michael on 19/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import Foundation

extension DateFormatter {
	
	/// YYYY-MM-DD format
	class var quoteDateFormatter: DateFormatter {
		
		let formatter = DateFormatter()
		formatter.dateFormat = "YYYY-MM-DD"
		formatter.locale = Locale.autoupdatingCurrent
		
		return formatter
		
	}
	
}
