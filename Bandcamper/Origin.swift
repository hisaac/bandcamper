// Created by Isaac Halvorson on 8/15/18

import Foundation

struct Origin: Decodable {

	private(set) var id: Int?
	private(set) var optionID: Int?
	private(set) var packageID: Int?
	private(set) var quantityAvailable: Int?
	private(set) var quantitySold: Int?
	private(set) var quantity: Int?

	private enum CodingKeys: String, CodingKey {
		case id
		case optionID = "option_id"
		case packageID = "package_id"
		case quantityAvailable = "quantity_available"
		case quantitySold = "quantity_sold"
		case quantity
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
