// Created by Isaac Halvorson on 8/5/18

import Foundation
import JavaScriptCore
import SwiftSoup

// swiftlint:disable all

public class BandcampService {

	public init() {}

	public func getArtist() {
		do {
			let url = URL(string: "https://convergecult.bandcamp.com/album/beautiful-ruin")!
			let data = try Data(contentsOf: url)
			let html = String(data: data, encoding: .utf8)
			getDataBlob(from: html!)
		} catch {
			print("whoops")
		}
	}

	private func getDataBlob(from html: String) {
		let firstLevelRegex = "(?s)var TralbumData = (.*?)\\};"
		let secondLevelRegex = "(?s)\\{(.*?)\\};"

		guard let tralbumData = html.find(regexes: [firstLevelRegex, secondLevelRegex])?.dropLast() else { return }
		print(tralbumData)

		guard let stringifiedJSON = JSContext()?.evaluateScript("JSON.stringify(\(tralbumData))").toString() else { return }
		print(stringifiedJSON)
		guard let jsonData = stringifiedJSON.data(using: .utf8) else { return }
		let albumData = try? JSONDecoder().decode(DataBlob.self, from: jsonData)
	}
}

extension String {

	func find(regex: String) -> String {
		guard let range = self.range(of: regex, options: .regularExpression) else { return "" }
		return String(self[range])
	}

	func find(regexes: [String]) -> String? {
		return self.find(regex: regexes[0]).find(regex: regexes[1])
	}

}
