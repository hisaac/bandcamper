// Created by Isaac Halvorson on 8/6/18

import AudioPlayer
import Cocoa

class MainViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource, AudioPlayerDelegate {

	// Table View IBOutlets
	@IBOutlet weak var tableView: NSTableView!
	@IBOutlet weak var trackNumberColumn: NSTableColumn!
	@IBOutlet weak var trackNameColumn: NSTableColumn!
	@IBOutlet weak var artistColumn: NSTableColumn!
	@IBOutlet weak var durationColumn: NSTableColumn!

	// Play Control IBOutlets
	@IBOutlet weak var playheadSlider: NSSlider!

	let testURL = "https://nonameraps.bandcamp.com/album/telefone"
	let bandcampService = BandcampService()
	let audioPlayer = AudioPlayer()

	var dataBlob: DataBlob? {
		didSet {
			guard let tracks = dataBlob?.tracks else { return }
			self.tracks = tracks
			tableView.reloadData()
		}
	}

	var tracks: [Track?] = [] {
		didSet {
			audioItems = tracks.compactMap { track in
				return AudioItem(
					highQualitySoundURL: nil,
					mediumQualitySoundURL: track?.audioFile?.mp3_v0,
					lowQualitySoundURL: track?.audioFile?.mp3_128
				)
			}
		}
	}

	var audioItems: [AudioItem] = []

	override func viewDidLoad() {
		super.viewDidLoad()

		tableView.delegate = self
		tableView.dataSource = self
		tableView.doubleAction = #selector(playTrack)

		audioPlayer.delegate = self

		playheadSlider.doubleValue = 0
		playheadSlider.action = #selector(skipToTimestamp)

		getDataBlob()
	}

	func getDataBlob() {
		bandcampService.getAlbum(at: testURL) { data in
			self.dataBlob = data
		}
	}

	@objc func playTrack() {
		audioPlayer.play(items: audioItems, startAtIndex: tableView.clickedRow)
	}

	@objc func skipToTimestamp() {
		audioPlayer.seek(to: playheadSlider.doubleValue)
	}

}

// MARK: - AudioPlayerDelegate Methods
extension MainViewController {

	func audioPlayer(_ audioPlayer: AudioPlayer, didUpdateProgressionTo time: TimeInterval, percentageRead: Float) {
		playheadSlider.doubleValue = Double(percentageRead)
	}

}

// MARK: - TableViewDelegate Methods
extension MainViewController {

	func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
		let track = tracks[row]

		switch tableColumn {
		case trackNumberColumn: return "\(track?.trackNumber ?? 0)"
		case trackNameColumn:   return "\(track?.title ?? "")"
		case artistColumn:      return "\(dataBlob?.artist ?? "")"
		case durationColumn:    return track?.duration!.toAudioString
		default:                return ""
		}
	}

	func numberOfRows(in tableView: NSTableView) -> Int {
		return tracks.count
	}

}

extension TimeInterval {
	var toAudioString: String {
		let intSelf = Int(self)

		let hours = intSelf / 3_600
		let minutes = (intSelf % 3_600) / 60
		let seconds = (intSelf % 3_600) % 60

		if hours > 0 {
			return String(format: "%1d:%02d:%02d", hours, minutes, seconds)
		} else {
			return String(format: "%1d:%02d", minutes, seconds)
		}
	}
}
