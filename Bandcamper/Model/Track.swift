// Created by Isaac Halvorson on 8/11/18

import Foundation

struct Track: Decodable {
	let albumPreorder: Bool?
	let altLink: String?
	let audioFile: AudioFile?
	let duration: TimeInterval?
	let encodingError: Bool?
	let encodingPending: Bool?
	let encodingsID: Int?
	let freeAlbumDownload: Bool?
	let hasFreeDownload: Bool?
	let hasInfo: Bool?
	let hasLyrics: Bool?
	let isCapped: Bool?
	let isDownloadable: Bool?
	let isDraft, unreleasedTrack: Bool?
	let isPrivate: Bool?
	let licenseType: Int?
	let lyrics: String?
	let sizeOfLyrics: Int?
	let streaming: Int?
	let title: String?
	let titleLink: String?
	let trackID, id, playCount: Int?
	let trackLicenseID: Int?
	let trackNumber: Int?
	let videoCaption: Bool?
	let videoFeatured: Int?
	let videoID: Int?
	let videoMobileURL: URL?
	let videoPosterURL: URL?
	let videoSourceID: String?
	let videoSourceType: String?

	private enum CodingKeys: String, CodingKey {
		case albumPreorder = "album_preorder"
		case altLink = "alt_link"
		case audioFile = "file"
		case duration
		case encodingError = "encoding_error"
		case encodingPending = "encoding_pending"
		case encodingsID = "encodings_id"
		case freeAlbumDownload = "free_album_download"
		case hasFreeDownload = "has_free_download"
		case hasInfo = "has_info"
		case hasLyrics = "has_lyrics"
		case id
		case isCapped = "is_capped"
		case isDownloadable = "is_downloadable"
		case isDraft = "is_draft"
		case isPrivate = "private"
		case licenseType = "license_type"
		case lyrics
		case playCount = "play_count"
		case sizeOfLyrics = "sizeof_lyrics"
		case streaming
		case title
		case titleLink = "title_link"
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

	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)

		albumPreorder = try container.decodeIfPresent(Bool.self, forKey: .albumPreorder)
		altLink = try container.decodeIfPresent(String.self, forKey: .altLink)
		audioFile = try container.decodeIfPresent(AudioFile.self, forKey: .audioFile)
		duration = try container.decodeIfPresent(TimeInterval.self, forKey: .duration)
		encodingError = try container.decodeIfPresent(Bool.self, forKey: .encodingError)
		encodingPending = try container.decodeIfPresent(Bool.self, forKey: .encodingPending)
		encodingsID = try container.decodeIfPresent(Int.self, forKey: .encodingsID)
		freeAlbumDownload = try container.decodeIfPresent(Bool.self, forKey: .freeAlbumDownload)
		hasFreeDownload = try container.decodeIfPresent(Bool.self, forKey: .hasFreeDownload)
		hasInfo = try container.decodeIfPresent(Bool.self, forKey: .hasInfo)
		hasLyrics = try container.decodeIfPresent(Bool.self, forKey: .hasLyrics)
		id = try container.decodeIfPresent(Int.self, forKey: .id)
		isCapped = try container.decodeIfPresent(Bool.self, forKey: .isCapped)
		isDownloadable = try container.decodeIfPresent(Bool.self, forKey: .isDownloadable)
		isDraft = try container.decodeIfPresent(Bool.self, forKey: .isDraft)
		isPrivate = try container.decodeIfPresent(Bool.self, forKey: .isPrivate)
		licenseType = try container.decodeIfPresent(Int.self, forKey: .licenseType)
		lyrics = try container.decodeIfPresent(String.self, forKey: .lyrics)
		playCount = try container.decodeIfPresent(Int.self, forKey: .playCount)
		sizeOfLyrics = try container.decodeIfPresent(Int.self, forKey: .sizeOfLyrics)
		streaming = try container.decodeIfPresent(Int.self, forKey: .streaming)
		title = try container.decodeIfPresent(String.self, forKey: .title)
		titleLink = try container.decodeIfPresent(String.self, forKey: .titleLink)
		trackID = try container.decodeIfPresent(Int.self, forKey: .trackID)
		trackLicenseID = try container.decodeIfPresent(Int.self, forKey: .trackLicenseID)
		trackNumber = try container.decodeIfPresent(Int.self, forKey: .trackNumber)
		unreleasedTrack = try container.decodeIfPresent(Bool.self, forKey: .unreleasedTrack)
		videoCaption = try container.decodeIfPresent(Bool.self, forKey: .videoCaption)
		videoFeatured = try container.decodeIfPresent(Int.self, forKey: .videoFeatured)
		videoID = try container.decodeIfPresent(Int.self, forKey: .videoID)
		videoMobileURL = try container.decodeIfPresent(URL.self, forKey: .videoMobileURL)
		videoPosterURL = try container.decodeIfPresent(URL.self, forKey: .videoPosterURL)
		videoSourceID = try container.decodeIfPresent(String.self, forKey: .videoSourceID)
		videoSourceType = try container.decodeIfPresent(String.self, forKey: .videoSourceType)
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
	"video_source_type": null
}
*/
