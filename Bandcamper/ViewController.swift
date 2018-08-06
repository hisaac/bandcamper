// Created by Isaac Halvorson on 8/6/18

import BandcamperKit
import Cocoa

class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	let callback: (Data?) -> Void = { data in
		guard let data = data else { return }
		let dataString = String(data: data, encoding: .utf8)
		print("\(dataString ?? "no data")")
	}

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}

	@IBAction func didClickButton(_ sender: Any) {
		let bandcampService = BandcampService()
		bandcampService.getArtist(callback)
	}

}
