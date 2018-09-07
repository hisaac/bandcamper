// Created by Isaac Halvorson on 9/7/18

import Foundation

struct Option: Decodable {
	let id: Int?
	let index: Int?
	let origins: [Origin]?
	let quantity: Int?
	let quantityAvailable: Int?
	let quantitySold: Int?
	let sku: String?
	let title: String?

	enum CodingKeys: String, CodingKey {
		case id
		case index
		case origins
		case quantity
		case quantityAvailable = "quantity_available"
		case quantitySold = "quantity_sold"
		case sku
		case title
	}

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		id = try container.decodeIfPresent(Int.self, forKey: .id)
		index = try container.decodeIfPresent(Int.self, forKey: .index)
		origins = try container.decodeIfPresent([Origin].self, forKey: .origins)
		quantity = try container.decodeIfPresent(Int.self, forKey: .quantity)
		quantityAvailable = try container.decodeIfPresent(Int.self, forKey: .quantityAvailable)
		quantitySold = try container.decodeIfPresent(Int.self, forKey: .quantitySold)
		sku = try container.decodeIfPresent(String.self, forKey: .sku)
		title = try container.decodeIfPresent(String.self, forKey: .title)
	}

}
