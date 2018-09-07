// Created by Isaac Halvorson on 8/6/18

import AVFoundation
import AVKit
import Cocoa

class ViewController: NSViewController {

	@IBOutlet weak var textField: NSTextField!
	@IBOutlet weak var playerView: AVPlayerView!

	let dobieURL = "https://dobie.bandcamp.com/album/dobie-the-sound-of-one-hand-clapping-deluxe-edition"
	let bandcampService = BandcampService()

	var player: AVPlayer?
	var playerItem: AVPlayerItem?
	var playerLayer: AVPlayerLayer?

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	@IBAction func didClickButton(_ sender: Any) {
		let urlString = !textField.stringValue.isEmpty ? textField.stringValue : dobieURL
		bandcampService.getAlbum(at: urlString) { dataBlob in
			self.playFirstSong(dataBlob)
		}
	}

	func playFirstSong(_ dataBlob: DataBlob) {
		guard let tracks = dataBlob.tracks?.filter({ $0.audioFile != nil }) else { return }
		guard let url = tracks.first?.audioFile?.highestQuality else { return }
		let song = AVPlayerItem(url: url)
		playerView.player = AVPlayer(playerItem: song)
		playerView.player?.play()
	}

}
