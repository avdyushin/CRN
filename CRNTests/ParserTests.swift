//
//  Untitled.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 03/04/2025.
//

let json = """
{
  "blnRadioShow": false,
  "Artist": "The Brave",
  "Title": "Rise Again",
  "CD": "Carnival of Sins",
  "SoundType": "Song",
  "SongCode": "46981",
  "ISBN": "",
  "iTunes": "",
  "URL": "",
  "RecordCompanyURL": "",
  "RecordCompany": "Independent",
  "bwYear": "2024",
  "Pos": "1",
  "Length": 293000,
  "RequestedByUserName": "",
  "RequestedByUserFrom": "",
  "Clear": false,
  "Artists1": "Love Like Gravity",
  "SongsComingUp1": "Let It Go",
  "Artists2": "Stars Will Fall",
  "SongsComingUp2": "Follow You",
  "Artists3": "Stained Red",
  "SongsComingUp3": "No Longer",
  "Artists4": "3 Days Under",
  "SongsComingUp4": "Shedding Skin",
  "Artists5": "Behold The Beloved",
  "SongsComingUp5": "Dear Martyr",
  "ArtistsCount": 5,
  "ArrJustPlayed1": "Youth Of The Nation - POD",
  "ArrArtistsJustPlayed1": "POD",
  "ArrSongsJustPlayed1": "Youth Of The Nation",
  "ArrJustPlayed2": "Small - Nate Parrish",
  "ArrArtistsJustPlayed2": "Nate Parrish",
  "ArrSongsJustPlayed2": "Small",
  "ArrJustPlayed3": "Not Unreachable - Matt Sassano",
  "ArrArtistsJustPlayed3": "Matt Sassano",
  "ArrSongsJustPlayed3": "Not Unreachable",
  "ArrJustPlayed4": "Face of the Sun - Scott Stapp",
  "ArrArtistsJustPlayed4": "Scott Stapp",
  "ArrSongsJustPlayed4": "Face of the Sun",
  "ArrJustPlayed5": "No More Suffering - Bayless",
  "ArrArtistsJustPlayed5": "Bayless",
  "ArrSongsJustPlayed5": "No More Suffering",
  "sHugeSongCDCover": "",
  "sLargeSongCDCover": "",
  "sSongCDCover": "",
  "sHugeCDCover": "/cdcovers/the%20brave%20-%20carnival%20of%20sins_huge.jpg",
  "sLargeCDCover": "/cdcovers/the%20brave%20-%20carnival%20of%20sins_large.jpg",
  "sCDCover": "/cdcovers/the%20brave%20-%20carnival%20of%20sins.jpg",
  "CRDN_Title": "Rise Again",
  "CRDN_Artist": "The Brave",
  "CRDN_CD": "Carnival of Sins",
  "CRDN_Label": "Independent",
  "CRDN_Year": "2024",
  "CRDNHugeCDCover": "/cdcovers/the%20brave%20-%20carnival%20of%20sins_huge.jpg",
  "CRDNLargeCDCover": "/cdcovers/the%20brave%20-%20carnival%20of%20sins_large.jpg",
  "CRDN_CDCover": "/cdcovers/the%20brave%20-%20carnival%20of%20sins.jpg",
  "CHRDN_Title": "Refraction",
  "CHRDN_Artist": "Testimony of Apocalypse",
  "CHRDN_CD": "Refraction",
  "CHRDN_Label": "Flicker",
  "CHRDN_Year": "2004",
  "CHRDNHugeCDCover": "/cdcovers/testimony%20of%20apocalypse%20-%20refraction_huge.jpg",
  "CHRDNLargeCDCover": "/cdcovers/testimony%20of%20apocalypse%20-%20refraction_large.jpg",
  "CHRDN_CDCover": "/cdcovers/staple.jpg",
  "CPPDN_Title": "When I'm With You",
  "CPPDN_Artist": "Citizen Way",
  "CPPDN_CD": "2.0",
  "CPPDN_Label": "Sparrow",
  "CPPDN_Year": "2019",
  "CPPDNHugeCDCover": "/cdcovers/2.0_huge.jpg",
  "CPPDNLargeCDCover": "/cdcovers/2.0_large.jpg",
  "CPPDN_CDCover": "/cdcovers/holy%20water.jpg",
  "CHDN_Title": "Not My Style (R3HAB Remix)",
  "CHDN_Artist": "Sarah Reeves",
  "CHDN_CD": "Not My Style",
  "CHDN_Label": "Gotee",
  "CHDN_Year": "2019",
  "CHDNHugeCDCover": "/cdcovers/not%20my%20style_huge.jpg",
  "CHDNLargeCDCover": "/cdcovers/not%20my%20style_large.jpg",
  "CHDN_CDCover": "/cdcovers/courtnie%20ramirez%20-%20perfectly%20loved.jpg",
  "CCGDN_Title": "Because of You",
  "CCGDN_Artist": "Petrina Pacheco",
  "CCGDN_CD": "Because of You",
  "CCGDN_Label": "Independent",
  "CCGDN_Year": "2024",
  "CCGDNHugeCDCover": "/cdcovers/petrina%20pacheco%20-%20because%20of%20you_huge.jpg",
  "CCGDNLargeCDCover": "/cdcovers/petrina%20pacheco%20-%20because%20of%20you_large.jpg",
  "CCGDN_CDCover": "/cdcovers/midsouth%20band%20-%20little%20simple%20things.jpg",
  "CCRDN_Title": "Heaven's On My Mind",
  "CCRDN_Artist": "Novella",
  "CCRDN_CD": "A Liquid Earth",
  "CCRDN_Label": "Pakaderm",
  "CCRDN_Year": "1989",
  "CCRDNHugeCDCover": "/cdcovers/a%20liquid%20earth_huge.jpg",
  "CCRDNLargeCDCover": "/cdcovers/a%20liquid%20earth_large.jpg",
  "CCRDN_CDCover": "/cdcovers/get%20it.jpg",
  "CRDNCDCover": "/cdcovers/the%20brave%20-%20carnival%20of%20sins_huge.jpg",
  "CHDNCDCover": "/cdcovers/not%20my%20style_huge.jpg",
  "CPPDNCDCover": "/cdcovers/2.0_huge.jpg",
  "CCRDNCDCover": "/cdcovers/a%20liquid%20earth_huge.jpg",
  "CCGDNCDCover": "/cdcovers/petrina%20pacheco%20-%20because%20of%20you_huge.jpg",
  "CHRDNCDCover": "/cdcovers/testimony%20of%20apocalypse%20-%20refraction_huge.jpg",
  "CRDNPlayList": [
    {
      "Title": "Youth Of The Nation",
      "Artist": "POD",
      "CD": "Satellite",
      "CDCover": "/cdcovers/satellite_large.jpg"
    },
    {
      "Title": "Small",
      "Artist": "Nate Parrish",
      "CD": "Small",
      "CDCover": "/cdcovers/nate%20parrish%20-%20small_large.jpg"
    },
    {
      "Title": "Not Unreachable",
      "Artist": "Matt Sassano",
      "CD": "Not Unreachable",
      "CDCover": "/cdcovers/matt%20sassano%20-%20not%20unreachable_large.jpg"
    },
    {
      "Title": "Face of the Sun",
      "Artist": "Scott Stapp",
      "CD": "Space Between The Shadows",
      "CDCover": "/cdcovers/space%20between%20the%20shadows_large.jpg"
    }
  ],
  "CHDNPlayList": [
    {
      "Title": "My God",
      "Artist": "Jor'Dan Armstrong",
      "CD": "My God",
      "CDCover": "/cdcovers/my%20god_large.jpg"
    },
    {
      "Title": "Perfectly Loved",
      "Artist": "Courtnie Ramirez",
      "CD": "Perfectly Loved",
      "CDCover": "/cdcovers/courtnie%20ramirez%20-%20perfectly%20loved_large.jpg"
    },
    {
      "Title": "New Day",
      "Artist": "Danny Gokey",
      "CD": "Haven't Seen It Yet",
      "CDCover": "/cdcovers/haven't%20seen%20it%20yet_large.jpg"
    },
    {
      "Title": "Never Walk Away",
      "Artist": "Elevation Rhythm",
      "CD": "Never Walk Away",
      "CDCover": "/cdcovers/never%20walk%20away_large.jpg"
    }
  ],
  "CPPDNPlayList": [
    {
      "Title": "Holy Water",
      "Artist": "We The Kingdom",
      "CD": "Holy Water",
      "CDCover": "/cdcovers/holy%20water_large.jpg"
    },
    {
      "Title": "Give My All",
      "Artist": "Audacious Worship",
      "CD": "Give My All",
      "CDCover": "/cdcovers/give%20my%20all_large.jpg"
    },
    {
      "Title": "Come What May",
      "Artist": "We Are Messengers",
      "CD": "Wholehearted",
      "CDCover": "/cdcovers/wholehearted_large.jpg"
    },
    {
      "Title": "Heaven On Earth",
      "Artist": "Planet Shakers",
      "CD": "Heaven On Earth",
      "CDCover": "/cdcovers/heaven%20on%20earth_large.jpg"
    }
  ],
  "CCRDNPlayList": [
    {
      "Title": "Wear Your Colors",
      "Artist": "Rick Cua",
      "CD": "Wear Your Colors",
      "CDCover": "/cdcovers/wear%20your%20colors_large.jpg"
    },
    {
      "Title": "Livin On The Edge",
      "Artist": "X-Sinner",
      "CD": "Get It",
      "CDCover": "/cdcovers/get%20it_large.jpg"
    },
    {
      "Title": "Everybody Needs Love",
      "Artist": "Seven Day Jesus",
      "CD": "Seven Day Jesus",
      "CDCover": "/cdcovers/seven%20day%20jesus_large.jpg"
    },
    {
      "Title": "Let the Whole World Sing",
      "Artist": "Degarmo & Key",
      "CD": "Mission of Mercy",
      "CDCover": "/cdcovers/mission%20of%20mercy_large.jpg"
    }
  ],
  "CCGDNPlayList": [
    {
      "Title": "Blood",
      "Artist": "High Valley",
      "CD": "Small Town Somethin'",
      "CDCover": "/cdcovers/small%20town%20somethin'_large.jpg"
    },
    {
      "Title": "Little Simple Things",
      "Artist": "Midsouth Band",
      "CD": "Little Simple Things",
      "CDCover": "/cdcovers/midsouth%20band%20-%20little%20simple%20things_large.jpg"
    },
    {
      "Title": "Mama",
      "Artist": "Kim Walker-Smith",
      "CD": "Trample",
      "CDCover": "/cdcovers/kim%20walker-smith%20-%20trample_large.jpg"
    },
    {
      "Title": "The Man You See In Me",
      "Artist": "Will Dempsey",
      "CD": "The Man You See In Me",
      "CDCover": "/cdcovers/the%20man%20you%20see%20in%20me_large.jpg"
    }
  ],
  "CHRDNPlayList": [
    {
      "Title": "Dictatorship vs. Democracy",
      "Artist": "Staple",
      "CD": "Staple",
      "CDCover": "/cdcovers/staple_large.jpg"
    },
    {
      "Title": "Driving Nails",
      "Artist": "Demon Hunter",
      "CD": "The World Is A Thorn",
      "CDCover": "/cdcovers/the%20world%20is%20a%20thorn_large.jpg"
    },
    {
      "Title": "Dagon Undone (The Reckoning)",
      "Artist": "The Showdown",
      "CD": "A Chorus of Obliteration",
      "CDCover": "/cdcovers/a%20chorus%20of%20obliteration_large.jpg"
    },
    {
      "Title": "In The End",
      "Artist": "Impending Doom",
      "CD": "In The End",
      "CDCover": "/cdcovers/impending%20doom%20-%20in%20the%20end_large.jpg"
    }
  ],
  "CRDNComingUp": [
    {
      "Title": "Let It Go",
      "Artist": "Love Like Gravity",
      "CD": "Break The Silence",
      "CDCover": "/cdcovers/love%20like%20gravity%20-%20break%20the%20silence_large.jpg"
    },
    {
      "Title": "Follow You",
      "Artist": "Stars Will Fall",
      "CD": "Follow You",
      "CDCover": "/cdcovers/stars%20will%20fall%20-%20follow%20you_large.jpg"
    },
    {
      "Title": "No Longer",
      "Artist": "Stained Red",
      "CD": "No Longer",
      "CDCover": "/cdcovers/stained%20red%20-%20no%20longer_large.jpg"
    },
    {
      "Title": "Shedding Skin",
      "Artist": "3 Days Under",
      "CD": "Shedding Skin",
      "CDCover": "/cdcovers/shedding%20skin_large.jpg"
    }
  ],
  "CHDNComingUp": [
    {
      "Title": "Born Ready",
      "Artist": "Coby James",
      "CD": "Born Ready",
      "CDCover": "/cdcovers/born%20ready_large.jpg"
    },
    {
      "Title": "Not Too Far",
      "Artist": "GAWVI",
      "CD": "Not Too Far",
      "CDCover": "/cdcovers/not%20too%20far_large.jpg"
    },
    {
      "Title": "Hallelujah Feeling",
      "Artist": "Caleb & John",
      "CD": "Hallelujah Feeling",
      "CDCover": "/cdcovers/hallelujah%20feeling_large.jpg"
    },
    {
      "Title": "Take It All Back (feat. We The Kingdom & Davies)",
      "Artist": "Tauren Wells",
      "CD": "Take It All Back",
      "CDCover": "/cdcovers/take%20it%20all%20back_large.jpg"
    }
  ],
  "CPPDNComingUp": [
    {
      "Title": "Made To Fly",
      "Artist": "Colton Dixon",
      "CD": "Made To Fly",
      "CDCover": "/cdcovers/colton%20dixon%20-%20made%20to%20fly_large.jpg"
    },
    {
      "Title": "Kingdom Come (feat. For King & Country)",
      "Artist": "Rebecca St. James",
      "CD": "Kingdom Come",
      "CDCover": "/cdcovers/kingdom%20come_large.jpg"
    },
    {
      "Title": "What Are We Waiting For (The Single)",
      "Artist": "For King & Country",
      "CD": "What Are We Waiting For (The Single)",
      "CDCover": "/cdcovers/what%20are%20we%20waiting%20for%20(the%20single)_large.jpg"
    },
    {
      "Title": "Gratitude",
      "Artist": "Brandon Lake",
      "CD": "House of Miracles",
      "CDCover": "/cdcovers/house%20of%20miracles_large.jpg"
    }
  ],
  "CCRDNComingUp": [
    {
      "Title": "Popular Americans",
      "Artist": "All Star United",
      "CD": "International Anthems For The Human Race",
      "CDCover": "/cdcovers/international%20anthems%20for%20the%20human%20race_large.jpg"
    },
    {
      "Title": "Carousel",
      "Artist": "Reality Check",
      "CD": "Reality Check",
      "CDCover": "/cdcovers/reality%20check_large.jpg"
    },
    {
      "Title": "Pied Piper",
      "Artist": "Petra",
      "CD": "Not Of This World",
      "CDCover": "/cdcovers/not%20of%20this%20world_large.jpg"
    },
    {
      "Title": "Victory Dance",
      "Artist": "Jet Circus",
      "CD": "Step On It",
      "CDCover": "/cdcovers/step%20on%20it_large.jpg"
    }
  ],
  "CCGDNComingUp": [
    {
      "Title": "Strong",
      "Artist": "Anne Wilson",
      "CD": "Rebel - The Beginning",
      "CDCover": "/cdcovers/rebel%20-%20the%20beginning_large.jpg"
    },
    {
      "Title": "The Lighthouse",
      "Artist": "Fortune, Walker, Rogers, Isaacs",
      "CD": "Gaither Country Gospel Favorites",
      "CDCover": "/cdcovers/gaither%20country%20gospel%20favorites_large.jpg"
    },
    {
      "Title": "Quote The Bible",
      "Artist": "Ben Gallaher",
      "CD": "Country In the House",
      "CDCover": "/cdcovers/country%20in%20the%20house_large.jpg"
    },
    {
      "Title": "Jesus Hear My Plea",
      "Artist": "Anointed Family",
      "CD": "Jesus Hear My Plea",
      "CDCover": "/cdcovers/jesus%20hear%20my%20plea_large.jpg"
    }
  ],
  "CHRDNComingUp": [
    {
      "Title": "Sleeping Awake",
      "Artist": "POD",
      "CD": "Matrix Reloaded Soundtrack",
      "CDCover": "/cdcovers/matrix%20reloaded%20soundtrack_large.jpg"
    },
    {
      "Title": "The Valley",
      "Artist": "Stryper",
      "CD": "God Damn Evil",
      "CDCover": "/cdcovers/god%20damn%20evil_large.jpg"
    },
    {
      "Title": "Obsessed (Death Therapy Remix)",
      "Artist": "XIII Minutes",
      "CD": "Obsessed (Death Therapy Remix)",
      "CDCover": "/cdcovers/xiii%20minutes%20-%20obsessed%20(death%20therapy%20remix)_large.jpg"
    },
    {
      "Title": "Song To The Wicked",
      "Artist": "Torn Sky",
      "CD": "Song To The Wicked",
      "CDCover": "/cdcovers/song%20to%20the%20wicked_large.jpg"
    }
  ],
  "exectime": "0.012221097946167"
}
"""

import XCTest
import Testing
import Foundation
@testable import CRN

struct ParserTests {
    @Test func example() async throws {
        let decoder = JSONDecoder()
        let np = try decoder.decode(NowPlaying.self, from: Data(json.utf8))
        debugPrint(np)
        #expect(np.CRDN_Track == "Rise Again")
        #expect(np.CRDN_Artist == "The Brave")
        #expect(np.CRDN_Album == "Carnival of Sins")
        #expect(np.CRDN_Cover == "/cdcovers/the%20brave%20-%20carnival%20of%20sins_large.jpg")
        #expect(np.CRDN_Year == "2024")
        let track = Track(
            title: "Youth Of The Nation",
            artist: "POD",
            album: "Satellite",
            cover: "/cdcovers/satellite_large.jpg"
        )
        #expect(np.CRDNPlayList.first == track)
    }
}
