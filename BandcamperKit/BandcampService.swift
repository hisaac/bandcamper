// Created by Isaac Halvorson on 8/5/18

import Foundation
import JavaScriptCore
import SwiftSoup

// swiftlint:disable all

public class BandcampService {

	public init() {}

	public func getAlbum(at url: String, callback: @escaping (DataBlob) -> Void) {
		guard let url = URL(string: url) else { return }

		do {
			let data = try Data(contentsOf: url)
			guard let html = String(data: data, encoding: .utf8) else { return }
			guard let dataBlob = getDataBlob(from: html) else { return }
			callback(dataBlob)
		} catch {
			print("whoops")
		}
	}

	private func getDataBlob(from html: String) -> DataBlob? {
		let regex = try! NSRegularExpression(pattern: "(?s)var TralbumData = (.*?);")

		guard let result = regex.firstMatch(in: html, range: NSMakeRange(0, html.count)) else { return nil }
		let resultRange = result.range(at: 1)

		guard let range = Range(resultRange, in: html) else { return nil }
		let tralbumData = String(html[range])

		guard let stringifiedJSON = JSContext()?.evaluateScript("JSON.stringify(\(tralbumData))").toString(),
			let jsonData = stringifiedJSON.data(using: .utf8) else {
				return nil
		}

		let decoder = JSONDecoder()
		decoder.dateDecodingStrategy = .formatted(.bandcampDateFormatter)

		return try? decoder.decode(DataBlob.self, from: jsonData)
	}
}
