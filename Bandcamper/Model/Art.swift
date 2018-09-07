// Created by Isaac Halvorson on 8/15/18

import Foundation

struct Art: Decodable {

	private(set) var fileName: String?
	private(set) var height: Int?
	private(set) var id: Int?
	private(set) var imageID: Int?
	private(set) var index: Int?
	private(set) var width: Int?

	private enum CodingKeys: String, CodingKey {
		case fileName = "file_name"
		case height
		case id
		case imageID = "image_id"
		case index
		case width
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
