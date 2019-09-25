//
//  ContentView.swift
//  QuoteFetcher
//
//  Created by Michael on 17/9/19.
//  Copyright © 2019 Michael. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var viewModel: ContentViewModel
	
    var body: some View {
		
		List(viewModel.quotes) { quote in
			
			QuoteRow(quote: quote)
			
		}.navigationBarItems(trailing:
			
			Button(action: {
				
				self.viewModel.getQuote()
				
			}, label: {
				
				Text("Fetch")
				
			})
		
		).navigationBarTitle("Quotes")
		
    }
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			ContentView(viewModel: ContentViewModel())
		}
    }
}
