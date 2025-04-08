//
//  Track.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 03/04/2025.
//

struct Track: Codable, Equatable {
    let title: String
    let artist: String
    let album: String
    let cover: String

    private enum CodingKeys: String, CodingKey {
        case title = "Title", artist = "Artist", album = "CD", cover = "CDCover"
    }
}
