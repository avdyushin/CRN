//
//  Station.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 03/04/2025.
//

enum Station: String, CaseIterable {
    case Rock
    case Hits
    case PowerPraise
    case ClassicRock
    case CountryGospel
    case HardRock
}

extension Station: CustomStringConvertible {
    var prefix: String {
        switch self {
        case .Rock: "CRDN"
        case .Hits: "CHDN"
        case .PowerPraise: "CPPDN"
        case .ClassicRock: "CCRDN"
        case .CountryGospel: "CCGDN"
        case .HardRock: "CHRDN"
        }
    }

    var streamId: Int {
        switch self {
        case .Rock: 11
        case .Hits: 12
        case .PowerPraise: 13
        case .ClassicRock: 14
        case .CountryGospel: 18
        case .HardRock: 15
        }
    }

    var description: String {
        switch self {
        case .Rock: "Christian Rock"
        case .Hits: "Christian Hits"
        case .PowerPraise: "Christian Power Praise"
        case .ClassicRock: "Christian Classic Rock"
        case .CountryGospel: "Christian Country Gospel"
        case .HardRock: "Christian Hard Rock"
        }
    }
}
