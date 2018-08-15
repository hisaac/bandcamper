// Created by Isaac Halvorson on 8/15/18

struct TralbumCollectInfo: Decodable {
	let showCollect: Bool
	let showWishlistTooltip: Bool

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
