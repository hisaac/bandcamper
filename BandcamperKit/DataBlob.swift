// Created by Isaac Halvorson on 8/13/18

struct DataBlob: Decodable {
	let current: Album

	enum CodingKeys: String, CodingKey {
		case current
	}
}
