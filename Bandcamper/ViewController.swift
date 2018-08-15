// Created by Isaac Halvorson on 8/6/18

import BandcamperKit
import Cocoa

class ViewController: NSViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}

	let callback: (DataBlob) -> Void = { dataBlob in
		print(String(describing: dataBlob))
	}

	@IBAction func didClickButton(_ sender: Any) {
		let bandcampService = BandcampService()
		bandcampService.getAlbum(
			at: "https://convergecult.bandcamp.com/album/beautiful-ruin",
			callback: callback
		)
	}

}
