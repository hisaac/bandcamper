// Created by Isaac Halvorson on 8/15/18

import Foundation

struct Art: Decodable {
	let fileName: String?
	let height: Int?
	let id: Int?
	let imageID: Int?
	let index: Int?
	let width: Int?

	private enum CodingKeys: String, CodingKey {
		case fileName = "file_name"
		case height
		case id
		case imageID = "image_id"
		case index
		case width
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		fileName = try container.decodeIfPresent(String.self, forKey: .fileName)
		height = try container.decodeIfPresent(Int.self, forKey: .height)
		id = try container.decodeIfPresent(Int.self, forKey: .id)
		imageID = try container.decodeIfPresent(Int.self, forKey: .imageID)
		index = try container.decodeIfPresent(Int.self, forKey: .index)
		width = try container.decodeIfPresent(Int.self, forKey: .width)
	}

}

/**
{
	"file_name": "3387659329",
	"height": 6000,
	"id": 246836926,
	"image_id": 13604946,
	"index": 0,
	"width": 6000
}
*/
