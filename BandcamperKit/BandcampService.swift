// Created by Isaac Halvorson on 8/5/18

import Foundation
//import SwiftSoup

public class BandcampService {

	public init() {}

	public func getArtist(_ callback: @escaping (Data?) -> Void) {
		guard let url = URL(string: "https://dobie.bandcamp.com/") else { return }
		let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
			guard error == nil else { return }
			guard let data = data else { return }
			guard let response = response else { return }
			print(response)
			callback(data)
		}

		dataTask.resume()
	}

//	private func getDataBlob(from html: String) -> String? {
//		do {
//			let document: Document = try SwiftSoup.parse(html)
//			let centerWrapper = try document.getElementById("centerWrapper")
//			return try document.text()
//		} catch Exception.Error(let type, let message) {
//			print(message)
//		} catch {
//			print("error")
//		}
//		return nil
//	}

}
