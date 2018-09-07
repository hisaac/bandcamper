// Created by Isaac Halvorson on 8/15/18

import Foundation

struct Package: Decodable {

	let albumArt: String?
	let albumArtID: Int?
	let albumArtist: String?
	let albumID: Int?
	let albumPrivate: Bool?
	let albumPublishDate: Date?
	let albumReleaseDate: Date?
	let albumTitle: String?
	let arts: [Art]?
	let associatedLicenseID: Int?
	let bandID: Int?
	let certifiedSeller: Int?
	let country: String?
	let currency: String?
	let descriptionPart1: String?
	let descriptionPart2: String?
	let description: String?
	let downloadArtID: Int?
	let downloadArtist: String?
	let downloadHasAudio: Bool?
	let downloadID: Int?
	let downloadTitle: String?
	let downloadType: String?
	let downloadURL: URL?
	let editionSize: Int?
	let featuredDate: Date?
	let fulfillmentDays: Int?
	let gridIndex: Int?
	let id: Int?
	let isSetPrice: Int?
	let label: String?
	let newDate: Date?
	let newDescriptionFormat: Int?
	let options: [Option]?
	let optionsTitle: String?
	let origins: [Origin]?
	let isPrivate: Bool?
	let price: Decimal?
	let quantityAvailable: Int?
	let quantityLimits: Int?
	let quantitySold: Int?
	let quantityWarning: Bool?
	let releaseDate: Date?
	let sellingBandID: Int?
	let shippingExceptionMode: String?
	let sku: String?
	let subscriberOnly: Bool?
	let subscriberOnlyPublished: Bool?
	let taxRate: Double?
	let title: String?
	let typeID: Int?
	let typeName: String?
	let url: URL?

	private enum CodingKeys: String, CodingKey {
		case albumArt = "album_art"
		case albumArtID = "album_art_id"
		case albumArtist = "album_artist"
		case albumID = "album_id"
		case albumPrivate = "album_private"
		case albumPublishDate = "album_publish_date"
		case albumReleaseDate = "album_release_date"
		case albumTitle = "album_title"
		case arts
		case associatedLicenseID = "associated_license_id"
		case bandID = "band_id"
		case certifiedSeller = "certified_seller"
		case country
		case currency
		case descriptionPart1 = "desc_pt1"
		case descriptionPart2 = "desc_pt2"
		case description
		case downloadArtID = "download_art_id"
		case downloadArtist = "download_artist"
		case downloadHasAudio = "download_has_audio"
		case downloadID = "download_id"
		case downloadTitle = "download_title"
		case downloadType = "download_type"
		case downloadURL = "download_url"
		case editionSize = "edition_size"
		case featuredDate = "featured_date"
		case fulfillmentDays = "fulfillment_days"
		case gridIndex = "grid_index"
		case id
		case isSetPrice = "is_set_price"
		case label
		case newDate = "new_date"
		case newDescriptionFormat = "new_desc_format"
		case options
		case optionsTitle = "options_title"
		case origins
		case isPrivate = "private"
		case price
		case quantityAvailable = "quantity_available"
		case quantityLimits = "quantity_limits"
		case quantitySold = "quantity_sold"
		case quantityWarning = "quantity_warning"
		case releaseDate = "release_date"
		case sellingBandID = "selling_band_id"
		case shippingExceptionMode = "shipping_exception_mode"
		case sku
		case subscriberOnly = "subscriber_only"
		case subscriberOnlyPublished = "subscriber_only_published"
		case taxRate = "tax_rate"
		case title
		case typeID = "type_id"
		case typeName = "type_name"
		case url
	}

	// swiftlint:disable:next function_body_length
	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		albumArt = try container.decodeIfPresent(String.self, forKey: .albumArt)
		albumArtID = try container.decodeIfPresent(Int.self, forKey: .albumArtID)
		albumArtist = try container.decodeIfPresent(String.self, forKey: .albumArtist)
		albumID = try container.decodeIfPresent(Int.self, forKey: .albumID)
		albumPrivate = try container.decodeIfPresent(Bool.self, forKey: .albumPrivate)
		albumPublishDate = try container.decodeIfPresent(Date.self, forKey: .albumPublishDate)
		albumReleaseDate = try container.decodeIfPresent(Date.self, forKey: .albumReleaseDate)
		albumTitle = try container.decodeIfPresent(String.self, forKey: .albumTitle)
		arts = try container.decodeIfPresent([Art].self, forKey: .arts)
		associatedLicenseID = try container.decodeIfPresent(Int.self, forKey: .associatedLicenseID)
		bandID = try container.decodeIfPresent(Int.self, forKey: .bandID)
		certifiedSeller = try container.decodeIfPresent(Int.self, forKey: .certifiedSeller)
		country = try container.decodeIfPresent(String.self, forKey: .country)
		currency = try container.decodeIfPresent(String.self, forKey: .currency)
		description = try container.decodeIfPresent(String.self, forKey: .description)
		descriptionPart1 = try container.decodeIfPresent(String.self, forKey: .descriptionPart1)
		descriptionPart2 = try container.decodeIfPresent(String.self, forKey: .descriptionPart2)
		downloadArtID = try container.decodeIfPresent(Int.self, forKey: .downloadArtID)
		downloadArtist = try container.decodeIfPresent(String.self, forKey: .downloadArtist)
		downloadHasAudio = try container.decodeIfPresent(Bool.self, forKey: .downloadHasAudio)
		downloadID = try container.decodeIfPresent(Int.self, forKey: .downloadID)
		downloadTitle = try container.decodeIfPresent(String.self, forKey: .downloadTitle)
		downloadType = try container.decodeIfPresent(String.self, forKey: .downloadType)
		downloadURL = try container.decodeIfPresent(URL.self, forKey: .downloadURL)
		editionSize = try container.decodeIfPresent(Int.self, forKey: .editionSize)
		featuredDate = try container.decodeIfPresent(Date.self, forKey: .featuredDate)
		fulfillmentDays = try container.decodeIfPresent(Int.self, forKey: .fulfillmentDays)
		gridIndex = try container.decodeIfPresent(Int.self, forKey: .gridIndex)
		id = try container.decodeIfPresent(Int.self, forKey: .id)
		isPrivate = try container.decodeIfPresent(Bool.self, forKey: .isPrivate)
		isSetPrice = try container.decodeIfPresent(Int.self, forKey: .isSetPrice)
		label = try container.decodeIfPresent(String.self, forKey: .label)
		newDate = try container.decodeIfPresent(Date.self, forKey: .newDate)
		newDescriptionFormat = try container.decodeIfPresent(Int.self, forKey: .newDescriptionFormat)
		options = try container.decodeIfPresent([Option].self, forKey: .options)
		optionsTitle = try container.decodeIfPresent(String.self, forKey: .optionsTitle)
		origins = try container.decodeIfPresent([Origin].self, forKey: .origins)
		price = try container.decodeIfPresent(Decimal.self, forKey: .price)
		quantityAvailable = try container.decodeIfPresent(Int.self, forKey: .quantityAvailable)
		quantityLimits = try container.decodeIfPresent(Int.self, forKey: .quantityLimits)
		quantitySold = try container.decodeIfPresent(Int.self, forKey: .quantitySold)
		quantityWarning = try container.decodeIfPresent(Bool.self, forKey: .quantityWarning)
		releaseDate = try container.decodeIfPresent(Date.self, forKey: .releaseDate)
		sellingBandID = try container.decodeIfPresent(Int.self, forKey: .sellingBandID)
		shippingExceptionMode = try container.decodeIfPresent(String.self, forKey: .shippingExceptionMode)
		sku = try container.decodeIfPresent(String.self, forKey: .sku)
		subscriberOnly = try container.decodeIfPresent(Bool.self, forKey: .subscriberOnly)
		subscriberOnlyPublished = try container.decodeIfPresent(Bool.self, forKey: .subscriberOnlyPublished)
		taxRate = try container.decodeIfPresent(Double.self, forKey: .taxRate)
		title = try container.decodeIfPresent(String.self, forKey: .title)
		typeID = try container.decodeIfPresent(Int.self, forKey: .typeID)
		typeName = try container.decodeIfPresent(String.self, forKey: .typeName)
		url = try container.decodeIfPresent(URL.self, forKey: .url)
	}

}

/**
{
	"album_art_id": 737261617,
	"album_art": null,
	"album_artist": null,
	"album_id": 3999133853,
	"album_private": null,
	"album_publish_date": "16 Mar 2018 07:19:32 GMT",
	"album_release_date": "25 May 2018 00:00:00 GMT",
	"album_title": "Never Better",
	"arts": [ Art ],
	"associated_license_id": null,
	"band_id": 975076194,
	"certified_seller": null,
	"country": null,
	"currency": "USD",
	"desc_pt1": "Slip case",
	"desc_pt2": null,
	"description": "Slip case",
	"download_art_id": 737261617,
	"download_artist": "Soulkeeper",
	"download_has_audio": true,
	"download_id": 3999133853,
	"download_title": "Never Better",
	"download_type": "a",
	"download_url": "https://soulkeepercult.bandcamp.com/album/never-better",
	"edition_size": null,
	"featured_date": null,
	"fulfillment_days": 2,
	"grid_index": 0,
	"id": 1707853140,
	"is_set_price": null,
	"label": null,
	"new_date": "05 Jun 2018 21:53:01 GMT",
	"new_desc_format": 1,
	"options_title": null,
	"options": null,
	"origins": [ Origin ],
	"price": 5.99,
	"private": null,
	"quantity_available": 44,
	"quantity_limits": 5,
	"quantity_sold": null,
	"quantity_warning": false,
	"release_date": null,
	"selling_band_id": 975076194,
	"shipping_exception_mode": null,
	"sku": "",
	"subscriber_only_published": false,
	"subscriber_only": null,
	"tax_rate": null,
	"title": "Never Better (Physical CD)",
	"type_id": 1,
	"type_name": "Compact Disc (CD)",
	"url": "https://soulkeepercult.bandcamp.com/album/never-better"
}
*/
