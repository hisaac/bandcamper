// Created by Isaac Halvorson on 8/11/18

struct Album: Decodable {

	let type: String
	let art_id: Int
	let set_price: Double
//	let publish_date: Date
	let upc: String
	let band_id: Int
	let new_desc_format: Int
	let minimum_price_nonzero: Double
//	let auto_repriced: Bool
//	let minimum_price: Double
//	let title: String
//	let purchase_url: String
//	let download_desc_id: Int
//	let credits: String
//	let require_email: Bool
//	let mod_date: Date
//	let audit: Int
//	let artist: String
//	let is_set_price: Bool
//	let purchase_title: String
//	let require_email_0: Bool
//	let killed: Bool
//	let selling_band_id: Int
//	let about: String
//	let download_pref: Int
//	let _private: Bool
//	let new_date: Date
//	let featured_track_id: Int
//	let id: Int
//	let release_date: Date

	private enum CodingKeys: String, CodingKey {
		case type
		case art_id
		case set_price
//		case publish_date
		case upc
		case band_id
		case new_desc_format
		case minimum_price_nonzero
//		case auto_repriced
//		case minimum_price
//		case title
//		case purchase_url
//		case download_desc_id
//		case credits
//		case require_email
//		case mod_date
//		case audit
//		case artist
//		case is_set_price
//		case purchase_title
//		case require_email_0
//		case killed
//		case selling_band_id
//		case about
//		case download_pref
//		case _private = "private"
//		case new_date
//		case featured_track_id
//		case id
//		case release_date
	}

}

//{
//	"type": "album",
//	"art_id": 3499381153,
//	"set_price": 7.0,
//	"publish_date": "28 Nov 2013 19:31:45 GMT",
//	"upc": null,
//	"band_id": 834764491,
//	"new_desc_format": 1,
//	"minimum_price_nonzero": 7.0,
//	"auto_repriced": null,
//	"minimum_price": 7.0,
//	"title": "Dobie - The Sound of One Hand Clapping (Deluxe Edition)",
//	"purchase_url": null,
//	"download_desc_id": null,
//	"credits": "Produced by Dobie",
//	"require_email": null,
//	"mod_date": "06 Aug 2018 00:01:25 GMT",
//	"audit": 0,
//	"artist": "Dobie",
//	"is_set_price": null,
//	"purchase_title": null,
//	"require_email_0": null,
//	"killed": null,
//	"selling_band_id": 834764491,
//	"about": "Originally released in 1998\r\nDeluxe Edition includes two bonus tracks",
//	"download_pref": 2,
//	"private": null,
//	"new_date": "28 Nov 2013 17:22:30 GMT",
//	"featured_track_id": 418792464,
//	"id": 4190276032,
//	"release_date": "28 Nov 2013 00:00:00 GMT"
//}
