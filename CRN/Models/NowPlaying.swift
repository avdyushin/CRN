//
//  NowPlaying.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 03/04/2025.
//

struct NowPlaying: Codable {

    let CRDN_Track: String
    let CRDN_Artist: String
    let CRDN_Album: String
    let CRDN_Cover: String
    let CRDN_Year: String
    let CRDNPlayList: [Track]

    let CHDN_Track: String
    let CHDN_Artist: String
    let CHDN_Album: String
    let CHDN_Cover: String
    let CHDN_Year: String

    let CPPDN_Track: String
    let CPPDN_Artist: String
    let CPPDN_Album: String
    let CPPDN_Cover: String
    let CPPDN_Year: String

    let CCRDN_Track: String
    let CCRDN_Artist: String
    let CCRDN_Album: String
    let CCRDN_Cover: String
    let CCRDN_Year: String

    let CCGDN_Track: String
    let CCGDN_Artist: String
    let CCGDN_Album: String
    let CCGDN_Cover: String
    let CCGDN_Year: String

    let CHRDN_Track: String
    let CHRDN_Artist: String
    let CHRDN_Album: String
    let CHRDN_Cover: String
    let CHRDN_Year: String

    private enum CodingKeys: String, CodingKey {
        case CRDN_Track = "CRDN_Title", CRDN_Artist, CRDN_Album = "CRDN_CD", CRDN_Cover = "CRDNLargeCDCover", CRDN_Year
        case CHDN_Track = "CHDN_Title", CHDN_Artist, CHDN_Album = "CHDN_CD", CHDN_Cover = "CHDNLargeCDCover", CHDN_Year
        case CPPDN_Track = "CPPDN_Title", CPPDN_Artist, CPPDN_Album = "CPPDN_CD", CPPDN_Cover = "CPPDNLargeCDCover", CPPDN_Year
        case CCRDN_Track = "CCRDN_Title", CCRDN_Artist, CCRDN_Album = "CCRDN_CD", CCRDN_Cover = "CCRDNLargeCDCover", CCRDN_Year
        case CCGDN_Track = "CCGDN_Title", CCGDN_Artist, CCGDN_Album = "CCGDN_CD", CCGDN_Cover = "CCGDNLargeCDCover", CCGDN_Year
        case CHRDN_Track = "CHRDN_Title", CHRDN_Artist, CHRDN_Album = "CHRDN_CD", CHRDN_Cover = "CHRDNLargeCDCover", CHRDN_Year
        case CRDNPlayList
    }
}
