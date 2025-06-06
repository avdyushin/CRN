//
//  PlayerViewModel.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 07/04/2025.
//

import Combine
import SwiftUI

extension UserDefaults {
    static var lastStation: Station {
        get {
            if let value = UserDefaults.standard.string(forKey: "station_"),
               let station = Station(rawValue: value) {
                return station
            }
            return Station.Rock
        }
        set {
            UserDefaults.standard.setValue(newValue.rawValue, forKey: "station_")
        }
    }
}

@Observable
class PlayerViewModel {
    private(set) var title = ""
    private(set) var subtitle = ""
    private(set) var cover: URL? = nil
    private(set) var isReady = true
    private(set) var buttonImage = "play.circle.fill"

    private var timer: AnyCancellable?
    private let service = NowPlayingService()
    private let streaming = StreamingService()
    private var status: Set<AnyCancellable> = Set()

    var station: Station {
        get {
            access(keyPath: \.station)
            return UserDefaults.lastStation
        }
        set {
            withMutation(keyPath: \.station) {
                UserDefaults.lastStation = newValue
                _station = newValue
            }
        }
    }

    @ObservationIgnored private var _station = UserDefaults.lastStation {
        willSet {
            if _station != newValue {
                changeStation(station: newValue)
            }
        }
        didSet {
            Task {
                try? await refresh()
            }
        }
    }

    init() {
        timer = Timer.publish(every: 60, on: .current, in: .default)
            .autoconnect()
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                Task {
                    try? await self?.refresh()
                }
            }
        streaming.$status
            .receive(on: DispatchQueue.main)
            .sink { [weak self] state in
                guard let self else { return }
                switch state {
                case .paused:
                    isReady = true
                    buttonImage = "play.circle.fill"
                case .playing:
                    isReady = true
                    buttonImage = "pause.circle.fill"
                case .waitingToPlayAtSpecifiedRate:
                    isReady = false
                case .none:
                    isReady = true
                    buttonImage = "play.circle.fill"
                case .some(_):
                    isReady = true
                    buttonImage = "play.circle.fill"
                }
            }
            .store(in: &status)
    }

    deinit {
        timer?.cancel()
    }

    func refresh() async throws {
        let viewModel = try await service.refresh(station: station)
        title = viewModel.title
        subtitle = viewModel.subtitle
        cover = viewModel.cover
    }

    func playPause() {
        switch streaming.status {
        case .paused, .none: streaming.play(station: station)
        case .playing: streaming.pause()
        default: ()
        }
    }

    func changeStation(station: Station) {
        switch streaming.status {
        case .paused, .none: ()
        case .playing:
            streaming.pause()
            streaming.play(station: station)
        default: ()
        }
    }
}
