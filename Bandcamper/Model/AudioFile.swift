// Created by Isaac Halvorson on 8/15/18

import Foundation

struct AudioFile: Decodable {
	let mp3_128: URL
	let mp3_v0: URL?

	var highestQuality: URL {
		return mp3_v0 ?? mp3_128
	}

	private enum CodingKeys: String, CodingKey {
		case mp3_128 = "mp3-128"
		case mp3_v0 = "mp3-v0"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		mp3_128 = try container.decode(URL.self, forKey: .mp3_128)
		mp3_v0 = try container.decodeIfPresent(URL.self, forKey: .mp3_v0)
	}
}

/**
"file": {
	"mp3-128": "https://bandcamp.com/stream_redirect?enc=mp3-128&track_id=3274852795&ts=1533520438&t=b28aab2330ae9bf6b9e5d1c63ffbda8ab48a6efd",
	"mp3-v0": "https://t4.bcbits.com/stream/591b3da764d330ed4760ce30e971aeac/mp3-v0/3274852795?p=1&ts=1533524038&t=15fdfb46adafc493c8c1b2b16cc47b03706ff18c&token=1533524038_b4236578b3aaf95ccbd38736947dc51354168e9e"
}
*/
