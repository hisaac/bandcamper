import Cocoa
import SwiftSoup
import JavaScriptCore

// swiftlint:disable all

func getArtist() {
	let url = URL(string: "https://convergecult.bandcamp.com/album/beautiful-ruin")!

	let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
		guard error == nil else { return }
		guard let data = data else { return }
		guard response != nil else { return }
		getDataBlob(from: String(data: data, encoding: .utf8)!)
	}

	dataTask.resume()
}

func getArtistLocal() {
	let html = Bundle.main.path(forResource: "dobie", ofType: "html")!
	let htmlString = try! String(contentsOfFile: html)
	getDataBlob(from: htmlString)
}

func getDataBlob(from html: String) -> String? {
	let document: Document = try! SwiftSoup.parse(html)
	let centerWrapper = try! document.getElementById("centerWrapper")!
	let scriptElements = try! centerWrapper.select("script")

	for element: Element in scriptElements {
		let elementString = element.data()
		if let tralbumDataVariableRange = elementString.range(of: "(?s)var TralbumData = (.*?)\\};", options: .regularExpression) {
			let tralbumDataString = String(elementString[tralbumDataVariableRange])
			let tralbumDataVariableString = String(elementString[tralbumDataVariableRange])
			if let dataRange = tralbumDataVariableString.range(of: "(?s)\\{(.*?)\\};", options: .regularExpression) {
				let dataText = String(tralbumDataVariableString[dataRange]).dropLast()
				guard let javascript = JSContext() else { return nil }
				let jsonString = javascript.evaluateScript("JSON.stringify(\(dataText))") as? String
				let jsonData = jsonString?.data(using: .utf8)

				let albumData = JSONDecoder().decode(Album.self, from: jsonData)
			}
		}
	}

	return nil
}

getArtist()
