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
		
		Text("Hello World").navigationBarItems(trailing:
			
			Button(action: {
				
				print("Fetching..")
				
			}, label: {
				
				Text("Fetch")
				
			})
		
		)
		
    }
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			ContentView(viewModel: ContentViewModel())
		}
    }
}
