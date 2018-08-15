// Created by Isaac Halvorson on 8/15/18

struct TralbumCollectInfo: Decodable {
	private(set) var showCollect: Bool?
	private(set) var showWishlistTooltip: Bool?

	private enum CodingKeys: String, CodingKey {
		case showCollect = "show_collect"
		case showWishlistTooltip = "show_wishlist_tooltip"
	}
}

/**
"tralbum_collect_info": {
	"show_collect": true,
	"show_wishlist_tooltip": false
},
*/
