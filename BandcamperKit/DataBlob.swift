// Created by Isaac Halvorson on 8/13/18

struct DataBlob: Decodable {

	var album: Album?
	var albumIsPreorder: Bool?
	var albumReleaseDate: Date?
	var artID: Int?
	var artist: String?
	var clientIDSig: String?
	var defaultPrice: Decimal? // ?
	var featuredTrackID: Int?
	var free: Int?
	var freeDownloadPage: String? // ?
	var hasAudio: Bool?
	var hasDiscounts: Bool? // ?
	var id: Int?
	var initialTrackNum: Int?
	var isBandMember: Bool?
	var isBonus: Bool? // ?
	var isPreorder: Bool?
	var isPrivateStream: Bool?
	var isPurchased: Bool?
	var itemsPurchased: Int? // ?
	var itemType: String?
	var lastSubscriptionItem: Int? // ?
	var licensedVersionIDs: [Int]? // ?
	var packageAssociatedLicenseID: Int? // ?
	var packages: Int? // ?
	var paid: Int?
	var playCapData: PlayCapData?
	var playingFrom: String?
	var preorderCount: Int?
	var tracks: [Track]?
	var tralbumCollectInfo: TralbumCollectInfo?
	var url: String?

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

	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

//		album = try container.decodeIfPresent(Album.self, forKey: .album)
		albumIsPreorder = try container.decodeIfPresent(Bool.self, forKey: .albumIsPreorder)
//		albumReleaseDate
		artID = try container.decodeIfPresent(Int.self, forKey: .artID)
		artist = try container.decodeIfPresent(String.self, forKey: .artist)
		clientIDSig = try container.decodeIfPresent(String.self, forKey: .clientIDSig)
		defaultPrice = try container.decodeIfPresent(Decimal.self, forKey: .defaultPrice)
		featuredTrackID = try container.decodeIfPresent(Int.self, forKey: .featuredTrackID)
		free = try container.decodeIfPresent(Int.self, forKey: .free)
		freeDownloadPage = try container.decodeIfPresent(String.self, forKey: .freeDownloadPage)
		hasAudio = try container.decodeIfPresent(Bool.self, forKey: .hasAudio)
		hasDiscounts = try container.decodeIfPresent(Bool.self, forKey: .hasDiscounts)
		id = try container.decodeIfPresent(Int.self, forKey: .id)
		initialTrackNum = try container.decodeIfPresent(Int.self, forKey: .initialTrackNum)
		isBandMember = try container.decodeIfPresent(Bool.self, forKey: .isBandMember)
		isBonus = try container.decodeIfPresent(Bool.self, forKey: .isBonus)
		isPreorder = try container.decodeIfPresent(Bool.self, forKey: .isPreorder)
		isPrivateStream = try container.decodeIfPresent(Bool.self, forKey: .isPrivateStream)
		isPurchased = try container.decodeIfPresent(Bool.self, forKey: .isPurchased)
//		itemsPurchased
		itemType = try container.decodeIfPresent(String.self, forKey: .itemType)
//		lastSubscriptionItem
//		licensedVersionIDs
//		packageAssociatedLicenseID
//		packages
		paid = try container.decodeIfPresent(Int.self, forKey: .paid)
		playCapData = try container.decodeIfPresent(PlayCapData.self, forKey: .playCapData)
		playingFrom = try container.decodeIfPresent(String.self, forKey: .playingFrom)
		preorderCount = try container.decodeIfPresent(Int.self, forKey: .preorderCount)
//		tracks = try container.decodeIfPresent([Track].self, forKey: .tracks)
		tralbumCollectInfo = try container.decodeIfPresent(TralbumCollectInfo.self, forKey: .tralbumCollectInfo)
		url = try container.decodeIfPresent(String.self, forKey: .url)
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
