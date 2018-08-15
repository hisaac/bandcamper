// Created by Isaac Halvorson on 8/11/18

struct Track: Decodable {

	let albumPreorder: Bool
	let altLink: String
	let duration: Double
	let encodingError: Bool
	let encodingPending: Bool
	let encodingsID: Int
	let audioFile: AudioFile
	let freeAlbumDownload: Bool
	let hasFreeDownload: Bool
	let hasInfo: Bool
	let hasLyrics: Bool
	let id: Int
	let isCapped: Bool
	let isDownloadable: Bool
	let isDraft: Bool
	let licenseType: Int
	let lyrics: String
	let playCount: Int
	let _private: Bool
	let sizeOfLyrics: Int
	let streaming: Int
	let titleLink: String
	let title: String
	let trackID: Int
	let trackLicenseID: String
	let trackNumber: Int
	let unreleasedTrack: Bool
	let videoCaption: String
	let videoFeatured: Bool
	let videoID: Int
	let videoMobileURL: String
	let videoPosterURL: String
	let videoSourceID: Int
	let videoSourceType: String

	private enum CodingKeys: String, CodingKey {
		case albumPreorder = "album_preorder"
		case altLink = "alt_link"
		case duration
		case encodingError = "encoding_error"
		case encodingPending = "encoding_pending"
		case encodingsID = "encodings_id"
		case audioFile = "file"
		case freeAlbumDownload = "free_album_download"
		case hasFreeDownload = "has_free_download"
		case hasInfo = "has_info"
		case hasLyrics = "has_lyrics"
		case id
		case isCapped = "is_capped"
		case isDownloadable = "is_downloadable"
		case isDraft = "is_draft"
		case licenseType = "license_type"
		case lyrics
		case playCount = "play_count"
		case _private = "private"
		case sizeOfLyrics = "sizeof_lyrics"
		case streaming
		case titleLink = "title_link"
		case title
		case trackID = "track_id"
		case trackLicenseID = "track_license_id"
		case trackNumber = "track_num"
		case unreleasedTrack = "unreleased_track"
		case videoCaption = "video_caption"
		case videoFeatured = "video_featured"
		case videoID = "video_id"
		case videoMobileURL = "video_mobile_url"
		case videoPosterURL = "video_poster_url"
		case videoSourceID = "video_source_id"
		case videoSourceType = "video_source_type"
	}

}

/**
{
	"album_preorder": false,
	"alt_link": null,
	"duration": 355.916,
	"encoding_error": null,
	"encoding_pending": null,
	"encodings_id": 3304833725,
	"file": { AudioFile },
	"free_album_download": false,
	"has_free_download": null,
	"has_info": true,
	"has_lyrics": false,
	"id": 3274852795,
	"is_capped": null,
	"is_downloadable": true,
	"is_draft": false,
	"license_type": 1,
	"lyrics": null,
	"play_count": null,
	"private": null,
	"sizeof_lyrics": 0,
	"streaming": 1,
	"title_link": "/track/consider-feat-rodney-p",
	"title": "Consider (feat Rodney P)",
	"track_id": 3274852795,
	"track_license_id": null,
	"track_num": 2,
	"unreleased_track": false,
	"video_caption": null,
	"video_featured": null,
	"video_id": null,
	"video_mobile_url": null,
	"video_poster_url": null,
	"video_source_id": null,
	"video_source_type": null,
}
*/
