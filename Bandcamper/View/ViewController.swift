// Created by Isaac Halvorson on 8/6/18

import AudioPlayer
import Cocoa

class ViewController: NSViewController, NSTableViewDelegate, NSTableViewDataSource {

	@IBOutlet weak var tableView: NSTableView!
	@IBOutlet weak var trackNumberColumn: NSTableColumn!
	@IBOutlet weak var trackNameColumn: NSTableColumn!
	@IBOutlet weak var artistColumn: NSTableColumn!
	@IBOutlet weak var durationColumn: NSTableColumn!

	let dobieURL = "https://nonameraps.bandcamp.com/album/telefone"
	let bandcampService = BandcampService()

	var dataBlob: DataBlob? {
		didSet {
			tracks = dataBlob?.tracks
			tableView.reloadData()
		}
	}

	var tracks: [Track]?

	override func viewDidLoad() {
		super.viewDidLoad()

		tableView.delegate = self
		tableView.dataSource = self

		getDataBlob()
	}

	func getDataBlob() {
		bandcampService.getAlbum(at: dobieURL) { data in
			self.dataBlob = data
		}
	}

	func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any? {
		guard let tracks = tracks else { return nil }
		let track = tracks[row]

		switch tableColumn {
		case trackNumberColumn: return "\(track.trackNumber ?? 0)"
		case trackNameColumn:   return "\(track.title ?? "")"
		case artistColumn:      return "\(dataBlob?.artist ?? "")"
		case durationColumn:    return track.duration!.toAudioString
		default:                return ""
		}
	}

	func numberOfRows(in tableView: NSTableView) -> Int {
		return tracks?.count ?? 0
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
