// Created by Isaac Halvorson on 8/13/18

struct DataBlob: Decodable {

	let album: Album
	let isPreorder: Bool?
	let albumIsPreorder: Bool?
	let albumReleaseDate: Date
	let preorderCount: Int?
	let hasAudio: Bool
	let artID: Int
	let tracks: [Track]
	let playingFrom: String
	let featuredTrackID: Int
	let initialTrackNum: Int?
	let packages: Int? // ?
	let url: String
	let defaultPrice: Decimal // ?
	let freeDownloadPage: String? // ?
	let free: Int
	let paid: Int
	let artist: String
	let itemType: String
	let id: Int
	let lastSubscriptionItem: Int? // ?
	let hasDiscounts: Bool? // ?
	let isBonus: Bool? // ?
	let playCapData: PlayCapData
	let clientIDSig: String
	let isPurchased: Bool?
	let itemsPurchased: Int? // ?
	let isPrivateStream: Bool?
	let isBandMember: Bool?
	let licensedVersionIDs: [Int]? // ?
	let packageAssociatedLicenseID: Int? // ?
	let tralbumCollectInfo: TralbumCollectInfo

	struct PlayCapData: Decodable {
		let streamingLimit: Int?
		let streamingLimitsEnabled: Bool
	}

	struct TralbumCollectInfo: Decodable {
		let showCollect: Bool
		let showWhitelistTooltip: Bool
	}

	enum CodingKeys: String, CodingKey {
		case album = "current"
		case isPreorder = "is_preorder"
		case albumIsPreorder = "album_is_preorder"
		case albumReleaseDate = "album_release_date"
		case preorderCount = "preorder_count"
		case hasAudio
		case artID = "art_id"
		case tracks = "trackinfo"
		case playingFrom = "playing_from"
		case featuredTrackID = "featured_track_id"
		case initialTrackNum = "initial_track_num"
		case packages
		case url
		case defaultPrice
		case freeDownloadPage
		case free = "FREE"
		case paid = "PAID"
		case artist
		case itemType = "item_type"
		case id
		case lastSubscriptionItem = "last_subscription_item"
		case hasDiscounts = "has_discounts"
		case isBonus = "is_bonus"
		case playCapData = "play_cap_data"
		case clientIDSig = "client_id_sig"
		case isPurchased = "is_purchased"
		case itemsPurchased = "items_purchased"
		case isPrivateStream = "is_private_stream"
		case isBandMember = "is_band_member"
		case licensedVersionIDs = "licensed_version_ids"
		case packageAssociatedLicenseID = "package_associated_license_id"
		case tralbumCollectInfo = "tralbum_collect_info"
	}
}
