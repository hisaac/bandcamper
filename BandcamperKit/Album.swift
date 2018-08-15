// Created by Isaac Halvorson on 8/11/18

struct Album: Decodable {

	let about: String
	let artID: Int
	let artist: String
	let audit: Int
	let autoRepriced: Bool
	let bandID: Int
	let credits: String
	let downloadDescID: Int
	let downloadPref: Int
	let featuredTrackID: Int
	let id: Int
	let isSetPrice: Bool
	let killed: Bool
	let minimumPrice: Decimal
	let minimumPriceNonzero: Decimal
	let modDate: Date
	let newDate: Date
	let newDescFormat: Int
	let _private: Bool
	let publishDate: Date
	let purchaseTitle: String
	let purchaseURL: String
	let releaseDate: Date
	let requireEmail: Bool
	let requireEmail0: Bool
	let sellingBandID: Int
	let setPrice: Double
	let title: String
	let type: String
	let upc: String

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
		case isSetPrice = "is_set_price"
		case killed
		case minimumPrice = "minimum_price"
		case minimumPriceNonzero = "minimum_price_nonzero"
		case modDate = "mod_date"
		case newDate = "new_date"
		case newDescFormat = "new_desc_format"
		case _private = "private"
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
