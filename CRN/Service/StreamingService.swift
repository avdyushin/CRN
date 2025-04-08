//
//  StreamingService.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 07/04/2025.
//

import AVKit
import Combine
import Foundation
import AVFoundation

@Observable
class StreamingService {

    private let baseURL = "https://listen.christianrock.net/stream"
    private var player: AVPlayer?
    private var cancellable: AnyCancellable?

    @ObservationIgnored
    @Published private(set) var status: AVPlayer.TimeControlStatus?

    func play(station: Station) {
        debugPrint("Will play \(station)")
        guard let url = URL(string: "\(baseURL)/\(station.streamId)/") else {
            return
        }

        guard status != .playing else {
            debugPrint("Already playing!")
            return
        }

        cancellable?.cancel()
        let item = AVPlayerItem(url: url)
        if let player = player {
            player.replaceCurrentItem(with: item)
        } else {
            player = AVPlayer(playerItem: item)
        }
        cancellable = player?.publisher(for: \.timeControlStatus).sink { [weak self] in
            self?.status = $0
        }
        debugPrint("Playing \(String(describing: player?.currentItem))")
        player?.play()
    }

    func pause() {
        player?.pause()
    }
}
