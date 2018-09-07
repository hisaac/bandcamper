// Created by Isaac Halvorson on 8/15/18

import Foundation

struct Origin: Decodable {
	let id: Int?
	let optionID: Int?
	let packageID: Int?
	let quantity: Int?
	let quantityAvailable: Int?
	let quantitySold: Int?

	enum CodingKeys: String, CodingKey {
		case id
		case optionID = "option_id"
		case packageID = "package_id"
		case quantity
		case quantityAvailable = "quantity_available"
		case quantitySold = "quantity_sold"
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		id = try container.decodeIfPresent(Int.self, forKey: .id)
		optionID = try container.decodeIfPresent(Int.self, forKey: .optionID)
		packageID = try container.decodeIfPresent(Int.self, forKey: .packageID)
		quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
		quantityAvailable = try container.decodeIfPresent(Int.self, forKey: .quantityAvailable)
		quantitySold = try container.decodeIfPresent(Int.self, forKey: .quantitySold)
	}
}

/**
{
	"id": 27076,
	"option_id": 0,
	"package_id": 1707853140,
	"quantity_available": 44,
	"quantity_sold": null,
	"quantity": null
}
*/
