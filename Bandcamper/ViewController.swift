// Created by Isaac Halvorson on 8/6/18

import AVFoundation
import BandcamperKit
import Cocoa

class ViewController: NSViewController {

	@IBOutlet weak var textField: NSTextField!

	let dobieURL = "https://dobie.bandcamp.com/album/dobie-the-sound-of-one-hand-clapping-deluxe-edition"
	let bandcampService = BandcampService()

	var player: AVPlayer?
	var playerItem: AVPlayerItem?
	var playerLayer: AVPlayerLayer?

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override var representedObject: Any? {
		didSet {
		// Update the view, if already loaded.
		}
	}

	@IBAction func didClickButton(_ sender: Any) {
		let urlString = !textField.stringValue.isEmpty ? textField.stringValue : dobieURL
		bandcampService.getAlbum(at: urlString) { dataBlob in
			self.playFirstSong(dataBlob)
		}
	}

	func playFirstSong(_ dataBlob: DataBlob) {
		guard let url = dataBlob.tracks?.first?.audioFile?.highestQuality else { return }
		let song = AVPlayerItem(url: url)
		player = AVPlayer(playerItem: song)
		playerLayer = AVPlayerLayer(player: player)
		player?.play()
	}

}
