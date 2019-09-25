# SwiftUI-List-Combine-API-Calls

- Developed in Xcode 11
- A simple app which displays quotes in a List from: https://api.kanye.rest. User taps the fetch button and it gets a JSON from the endpoint and is displayed on the List
- App uses URLSession Combine extension to parse the response and append it into the quotes array in the view model
- Uses SwiftUI List class to display the list of quotes and appended to the top of the app when it retrieves a quote
