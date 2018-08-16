// Created by Isaac Halvorson on 8/15/18

import Foundation

struct Package: Decodable {

	private(set) var albumArtID: Int?
	private(set) var albumArt: String?
	private(set) var albumArtist: String?
	private(set) var albumID: Int?
	private(set) var albumPrivate: Bool?
	private(set) var albumPublishDate: Date?
	private(set) var albumReleaseDate: Date?
	private(set) var albumTitle: String?
	private(set) var arts: [Art]?
	private(set) var associatedLicenseID: Int?
	private(set) var bandID: Int?
	private(set) var certifiedSeller: Int?
	private(set) var country: String?
	private(set) var currency: String?
	private(set) var descriptionPart1: String?
	private(set) var descriptionPart2: String?
	private(set) var description: String?
	private(set) var downloadArtID: Int?
	private(set) var downloadArtist: String?
	private(set) var downloadHasAudio: Bool?
	private(set) var downloadID: Int?
	private(set) var downloadTitle: String?
	private(set) var downloadType: String?
	private(set) var downloadURL: URL?
	private(set) var editionSize: Int?
	private(set) var featuredDate: Date?
	private(set) var fulfillmentDays: Int?
	private(set) var gridIndex: Int?
	private(set) var id: Int?
	private(set) var isPrivate: Bool?
	private(set) var isSetPrice: Bool?
	private(set) var label: String?
	private(set) var newDate: Date?
	private(set) var newDescriptionFormat: Int?
	private(set) var optionsTitle: String?
	private(set) var options: String?
	private(set) var origins: [Origin]?
	private(set) var price: Decimal?
	private(set) var quantityAvailable: Int?
	private(set) var quantityLimits: Int?
	private(set) var quantitySold: Int?
	private(set) var quantityWarning: Bool?
	private(set) var releaseDate: Date?
	private(set) var sellingBandID: Int?
	private(set) var shippingExceptionMode: String?
	private(set) var sku: String?
	private(set) var subscriberOnlyPublished: Bool?
	private(set) var subscriberOnly: Bool?
	private(set) var taxRate: Double?
	private(set) var title: String?
	private(set) var typeID: Int?
	private(set) var typeName: String?
	private(set) var url: URL?

	private enum CodingKeys: String, CodingKey {
		case albumArtID = "album_art_id"
		case albumArt = "album_art"
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
		case isPrivate = "private"
		case isSetPrice = "is_set_price"
		case label
		case newDate = "new_date"
		case newDescriptionFormat = "new_desc_format"
		case optionsTitle = "options_title"
		case options
		case origins
		case price
		case quantityAvailable = "quantity_available"
		case quantityLimits = "quantity_limits"
		case quantitySold = "quantity_sold"
		case quantityWarning = "quantity_warning"
		case releaseDate = "release_date"
		case sellingBandID = "selling_band_id"
		case shippingExceptionMode = "shipping_exception_mode"
		case sku
		case subscriberOnlyPublished = "subscriber_only_published"
		case subscriberOnly = "subscriber_only"
		case taxRate = "tax_rate"
		case title
		case typeID = "type_id"
		case typeName = "type_name"
		case url
	}

	// swiftlint:disable:next function_body_length
	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		albumArtID = try container.decodeIfPresent(Int.self, forKey: .albumArtID)
		albumArt = try container.decodeIfPresent(String.self, forKey: .albumArt)
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
		descriptionPart1 = try container.decodeIfPresent(String.self, forKey: .descriptionPart1)
		descriptionPart2 = try container.decodeIfPresent(String.self, forKey: .descriptionPart2)
		description = try container.decodeIfPresent(String.self, forKey: .description)
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
		isSetPrice = try container.decodeIfPresent(Bool.self, forKey: .isSetPrice)
		label = try container.decodeIfPresent(String.self, forKey: .label)
		newDate = try container.decodeIfPresent(Date.self, forKey: .newDate)
		newDescriptionFormat = try container.decodeIfPresent(Int.self, forKey: .newDescriptionFormat)
		optionsTitle = try container.decodeIfPresent(String.self, forKey: .optionsTitle)
		options = try container.decodeIfPresent(String.self, forKey: .options)
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
		subscriberOnlyPublished = try container.decodeIfPresent(Bool.self, forKey: .subscriberOnlyPublished)
		subscriberOnly = try container.decodeIfPresent(Bool.self, forKey: .subscriberOnly)
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
