// Created by Isaac Halvorson on 8/15/18

struct PlayCapData: Decodable {
	private(set) var streamingLimit: Int?
	private(set) var streamingLimitsEnabled: Bool?

	private enum CodingKeys: String, CodingKey {
		case streamingLimit = "streaming_limit"
		case streamingLimitsEnabled = "streaming_limits_enabled"
	}
}

/**
"play_cap_data": {
	"streaming_limit": 3,
	"streaming_limits_enabled": true
}
*/
