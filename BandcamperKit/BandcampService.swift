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
		let regex = try! NSRegularExpression(pattern: "(?s)var TralbumData = (.*?);")

		guard let result = regex.firstMatch(in: html, range: NSMakeRange(0, html.count)) else { return }
		let resultRange = result.range(at: 1)

		guard let range = Range(resultRange, in: html) else { return }
		let tralbumData = String(html[range])

		guard let stringifiedJSON = JSContext()?.evaluateScript("JSON.stringify(\(tralbumData))").toString(),
			let jsonData = stringifiedJSON.data(using: .utf8) else {
				return
		}

		let albumData = try? JSONDecoder().decode(DataBlob.self, from: jsonData)
	}
}
