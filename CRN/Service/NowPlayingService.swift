//
//  NowPlayingService.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 07/04/2025.
//

import Foundation

class NowPlayingService {

    static let baseURL = "https://www.christianrock.net"
    static let supportURL = "\(baseURL)/support.php"

    private let session: URLSession
    private let decoder = JSONDecoder()

    init(session: URLSession = .shared) {
        self.session = session
    }

    func refresh(station: Station) async throws -> NowPlayingViewModel {
        let url = URL(string: "\(Self.baseURL)/iphonecrdn.php")!
        let (data, _) = try await session.data(from: url)
        let nowPlaying = try decoder.decode(NowPlaying.self, from: data)
        switch station {
        case .Rock:
            return NowPlayingViewModel(
                title: nowPlaying.CRDN_Track,
                subtitle: "\(nowPlaying.CRDN_Artist) — \(nowPlaying.CRDN_Album) (\(nowPlaying.CRDN_Year))",
                cover: URL(string: "\(Self.baseURL)/\(nowPlaying.CRDN_Cover)")
            )
        case .Hits:
            return NowPlayingViewModel(
                title: nowPlaying.CHDN_Track,
                subtitle: "\(nowPlaying.CHDN_Artist) — \(nowPlaying.CHDN_Album) (\(nowPlaying.CHDN_Year))",
                cover: URL(string: "\(Self.baseURL)/\(nowPlaying.CHDN_Cover)")
            )
        case .PowerPraise:
            return NowPlayingViewModel(
                title: nowPlaying.CPPDN_Track,
                subtitle: "\(nowPlaying.CPPDN_Artist) — \(nowPlaying.CPPDN_Album) (\(nowPlaying.CPPDN_Year))",
                cover: URL(string: "\(Self.baseURL)/\(nowPlaying.CPPDN_Cover)")
            )
        case .ClassicRock:
            return NowPlayingViewModel(
                title: nowPlaying.CCRDN_Track,
                subtitle: "\(nowPlaying.CCRDN_Artist) — \(nowPlaying.CCRDN_Album) (\(nowPlaying.CCRDN_Year))",
                cover: URL(string: "\(Self.baseURL)/\(nowPlaying.CCRDN_Cover)")
            )
        case .CountryGospel:
            return NowPlayingViewModel(
                title: nowPlaying.CCGDN_Track,
                subtitle: "\(nowPlaying.CCGDN_Artist) — \(nowPlaying.CCGDN_Album) (\(nowPlaying.CCGDN_Year))",
                cover: URL(string: "\(Self.baseURL)/\(nowPlaying.CCGDN_Cover)")
            )
        case .HardRock:
            return NowPlayingViewModel(
                title: nowPlaying.CHRDN_Track,
                subtitle: "\(nowPlaying.CHRDN_Artist) — \(nowPlaying.CHRDN_Album) (\(nowPlaying.CHRDN_Year))",
                cover: URL(string: "\(Self.baseURL)/\(nowPlaying.CHRDN_Cover)")
            )
        }
    }
}
