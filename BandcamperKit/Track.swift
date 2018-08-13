// Created by Isaac Halvorson on 8/11/18

struct Track: Decodable {

	struct File: Codable {
		let mp3_v0: String  // JSON property name mp3-v0
		let mp3_128: String // JSON property name mp3-128
	}

	let video_caption: String
	let is_draft: Bool
	let lyrics: String
	let title_link: String
	let file: File
	let is_capped: Bool
	let sizeof_lyrics: Int
	let video_featured: Bool
	let video_id: Int
	let streaming: Int
	let has_lyrics: Bool
	let license_type: Int
	let title: String
	let video_source_type: String
	let alt_link: String
	let has_info: Bool
	let video_source_id: Int
	let track_num: Int
	let encoding_error: Bool
	let is_downloadable: Bool
	let video_mobile_url: String
	let album_preorder: Bool
	let _private: Bool
	let encoding_pending: Bool
	let duration: Double
	let has_free_download: Bool
	let video_poster_url: String
	let unreleased_track: Bool
	let track_id: Int
	let id: Int
	let track_license_id: String
	let play_count: Int
	let free_album_download: Bool
	let encodings_id: Int

}

//{
//	"video_caption": null,
//	"is_draft": false,
//	"lyrics": null,
//	"title_link": "/track/consider-feat-rodney-p",
//	"file": {
//		"mp3-v0": "https://t4.bcbits.com/stream/591b3da764d330ed4760ce30e971aeac/mp3-v0/3274852795?p=1&ts=1533524038&t=15fdfb46adafc493c8c1b2b16cc47b03706ff18c&token=1533524038_b4236578b3aaf95ccbd38736947dc51354168e9e",
//		"mp3-128": "https://bandcamp.com/stream_redirect?enc=mp3-128&track_id=3274852795&ts=1533520438&t=b28aab2330ae9bf6b9e5d1c63ffbda8ab48a6efd"
//	},
//	"is_capped": null,
//	"sizeof_lyrics": 0,
//	"video_featured": null,
//	"video_id": null,
//	"streaming": 1,
//	"has_lyrics": false,
//	"license_type": 1,
//	"title": "Consider (feat Rodney P)",
//	"video_source_type": null,
//	"alt_link": null,
//	"has_info": true,
//	"video_source_id": null,
//	"track_num": 2,
//	"encoding_error": null,
//	"is_downloadable": true,
//	"video_mobile_url": null,
//	"album_preorder": false,
//	"private": null,
//	"encoding_pending": null,
//	"duration": 355.916,
//	"has_free_download": null,
//	"video_poster_url": null,
//	"unreleased_track": false,
//	"track_id": 3274852795,
//	"id": 3274852795,
//	"track_license_id": null,
//	"play_count": null,
//	"free_album_download": false,
//	"encodings_id": 3304833725
//}
