// Created by Isaac Halvorson on 8/13/18

struct DataBlob: Decodable {

	let album: Album
	let albumIsPreorder: Bool?
	let albumReleaseDate: Date
	let artID: Int
	let artist: String
	let clientIDSig: String
	let defaultPrice: Decimal // ?
	let featuredTrackID: Int
	let free: Int
	let freeDownloadPage: String? // ?
	let hasAudio: Bool
	let hasDiscounts: Bool? // ?
	let id: Int
	let initialTrackNum: Int?
	let isBandMember: Bool?
	let isBonus: Bool? // ?
	let isPreorder: Bool?
	let isPrivateStream: Bool?
	let isPurchased: Bool?
	let itemsPurchased: Int? // ?
	let itemType: String
	let lastSubscriptionItem: Int? // ?
	let licensedVersionIDs: [Int]? // ?
	let packageAssociatedLicenseID: Int? // ?
	let packages: Int? // ?
	let paid: Int
	let playCapData: PlayCapData
	let playingFrom: String
	let preorderCount: Int?
	let tracks: [Track]
	let tralbumCollectInfo: TralbumCollectInfo
	let url: String

	enum CodingKeys: String, CodingKey {
		case album = "current"
		case albumIsPreorder = "album_is_preorder"
		case albumReleaseDate = "album_release_date"
		case artID = "art_id"
		case artist
		case clientIDSig = "client_id_sig"
		case defaultPrice
		case featuredTrackID = "featured_track_id"
		case free = "FREE"
		case freeDownloadPage
		case hasAudio
		case hasDiscounts = "has_discounts"
		case id
		case initialTrackNum = "initial_track_num"
		case isBandMember = "is_band_member"
		case isBonus = "is_bonus"
		case isPreorder = "is_preorder"
		case isPrivateStream = "is_private_stream"
		case isPurchased = "is_purchased"
		case itemsPurchased = "items_purchased"
		case itemType = "item_type"
		case lastSubscriptionItem = "last_subscription_item"
		case licensedVersionIDs = "licensed_version_ids"
		case packageAssociatedLicenseID = "package_associated_license_id"
		case packages
		case paid = "PAID"
		case playCapData = "play_cap_data"
		case playingFrom = "playing_from"
		case preorderCount = "preorder_count"
		case tracks = "trackinfo"
		case tralbumCollectInfo = "tralbum_collect_info"
		case url
	}

}

/**
{
	"album_is_preorder": null,
	"album_release_date": "29 Jun 2018 00:00:00 GMT",
	"art_id": 2186809954,
	"artist": "Converge",
	"client_id_sig": "P37agUa1PFbVhC7D0C76mHa2mpE=",
	"current": { Album },
	"defaultPrice": 7,
	"featured_track_id": 2341299854,
	"FREE": 1,
	"freeDownloadPage": null,
	"has_discounts": null,
	"hasAudio": true,
	"id": 409459013,
	"initial_track_num": null,
	"is_band_member": null,
	"is_bonus": null,
	"is_preorder": null,
	"is_private_stream": null,
	"is_purchased": null,
	"item_type": "album",
	"items_purchased": null,
	"last_subscription_item": null,
	"licensed_version_ids": null,
	"package_associated_license_id": null,
	"packages": null,
	"PAID": 2,
	"play_cap_data": {
		"streaming_limit": 3,
		"streaming_limits_enabled": true
	},
	"playing_from": "album page",
	"preorder_count": null,
	"trackinfo": [ Track ],
	"tralbum_collect_info": {
		"show_collect": true,
		"show_wishlist_tooltip": false
	},
	"url": "http://convergecult.bandcamp.com/album/beautiful-ruin",
}
*/
