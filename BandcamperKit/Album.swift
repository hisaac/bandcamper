// Created by Isaac Halvorson on 8/11/18

public struct Album: Decodable {

	private(set) var about: String?
	private(set) var artID: Int?
	private(set) var artist: String?
	private(set) var audit: Int?
	private(set) var autoRepriced: Bool?
	private(set) var bandID: Int?
	private(set) var credits: String?
	private(set) var downloadDescID: Int?
	private(set) var downloadPref: Int?
	private(set) var featuredTrackID: Int?
	private(set) var id: Int?
	private(set) var isPrivate: Bool?
	private(set) var isSetPrice: Bool?
	private(set) var killed: Bool?
	private(set) var minimumPrice: Decimal?
	private(set) var minimumPriceNonzero: Decimal?
	private(set) var modDate: Date?
	private(set) var newDate: Date?
	private(set) var newDescFormat: Int?
	private(set) var publishDate: Date?
	private(set) var purchaseTitle: String?
	private(set) var purchaseURL: URL?
	private(set) var releaseDate: Date?
	private(set) var requireEmail: Bool?
	private(set) var requireEmail0: Bool? // If user sets price to zero, then email is required
	private(set) var sellingBandID: Int?
	private(set) var setPrice: Decimal?
	private(set) var title: String?
	private(set) var type: String?
	private(set) var upc: String?

	private enum CodingKeys: String, CodingKey {
		case about
		case artID = "art_id"
		case artist
		case audit
		case autoRepriced = "auto_repriced"
		case bandID = "band_id"
		case credits
		case downloadDescID = "download_desc_id"
		case downloadPref = "download_pref"
		case featuredTrackID = "featured_track_id"
		case id
		case isPrivate = "private"
		case isSetPrice = "is_set_price"
		case killed
		case minimumPrice = "minimum_price"
		case minimumPriceNonzero = "minimum_price_nonzero"
		case modDate = "mod_date"
		case newDate = "new_date"
		case newDescFormat = "new_desc_format"
		case publishDate = "publish_date"
		case purchaseTitle = "purchase_title"
		case purchaseURL = "purchase_url"
		case releaseDate = "release_date"
		case requireEmail = "require_email"
		case requireEmail0 = "require_email_0"
		case sellingBandID = "selling_band_id"
		case setPrice = "set_price"
		case title
		case type
		case upc
	}

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		about = try container.decodeIfPresent(String.self, forKey: .about)
		artID = try container.decodeIfPresent(Int.self, forKey: .artID)
		artist = try container.decodeIfPresent(String.self, forKey: .artist)
		audit = try container.decodeIfPresent(Int.self, forKey: .audit)
		autoRepriced = try container.decodeIfPresent(Bool.self, forKey: .autoRepriced)
		bandID = try container.decodeIfPresent(Int.self, forKey: .bandID)
		credits = try container.decodeIfPresent(String.self, forKey: .credits)
		downloadDescID = try container.decodeIfPresent(Int.self, forKey: .downloadDescID)
		downloadPref = try container.decodeIfPresent(Int.self, forKey: .downloadPref)
		featuredTrackID = try container.decodeIfPresent(Int.self, forKey: .featuredTrackID)
		id = try container.decodeIfPresent(Int.self, forKey: .id)
		isPrivate = try container.decodeIfPresent(Bool.self, forKey: .isPrivate)
		isSetPrice = try container.decodeIfPresent(Bool.self, forKey: .isSetPrice)
		killed = try container.decodeIfPresent(Bool.self, forKey: .killed)
		minimumPrice = try container.decodeIfPresent(Decimal.self, forKey: .minimumPrice)
		minimumPriceNonzero = try container.decodeIfPresent(Decimal.self, forKey: .minimumPriceNonzero)
		modDate = try container.decodeIfPresent(Date.self, forKey: .modDate)
		newDate = try container.decodeIfPresent(Date.self, forKey: .newDate)
		newDescFormat = try container.decodeIfPresent(Int.self, forKey: .newDescFormat)
		publishDate = try container.decodeIfPresent(Date.self, forKey: .publishDate)
		purchaseTitle = try container.decodeIfPresent(String.self, forKey: .purchaseTitle)
		purchaseURL = try container.decodeIfPresent(URL.self, forKey: .purchaseURL)
		releaseDate = try container.decodeIfPresent(Date.self, forKey: .releaseDate)
		requireEmail = try container.decodeIfPresent(Bool.self, forKey: .requireEmail)
		requireEmail0 = try container.decodeIfPresent(Bool.self, forKey: .requireEmail0)
		sellingBandID = try container.decodeIfPresent(Int.self, forKey: .sellingBandID)
		setPrice = try container.decodeIfPresent(Decimal.self, forKey: .setPrice)
		title = try container.decodeIfPresent(String.self, forKey: .title)
		type = try container.decodeIfPresent(String.self, forKey: .type)
		upc = try container.decodeIfPresent(String.self, forKey: .upc)
	}

}

/**
{
	"about": "Originally released in 1998\r\nDeluxe Edition includes two bonus tracks",
	"art_id": 3499381153,
	"artist": "Dobie",
	"audit": 0,
	"auto_repriced": null,
	"band_id": 834764491,
	"credits": "Produced by Dobie",
	"download_desc_id": null,
	"download_pref": 2,
	"featured_track_id": 418792464,
	"id": 4190276032,
	"is_set_price": null,
	"killed": null,
	"minimum_price_nonzero": 7.0,
	"minimum_price": 7.0,
	"mod_date": "06 Aug 2018 00:01:25 GMT",
	"new_date": "28 Nov 2013 17:22:30 GMT",
	"new_desc_format": 1,
	"private": null,
	"publish_date": "28 Nov 2013 19:31:45 GMT",
	"purchase_title": null,
	"purchase_url": null,
	"release_date": "28 Nov 2013 00:00:00 GMT",
	"require_email_0": null,
	"require_email": null,
	"selling_band_id": 834764491,
	"set_price": 7.0,
	"title": "Dobie - The Sound of One Hand Clapping (Deluxe Edition)",
	"type": "album",
	"upc": null
}
*/
