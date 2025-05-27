//
//  CRNApp.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 03/04/2025.
//

import SwiftUI

@main
struct CRNApp: App {

    private let settings = AppSettings()

    var body: some Scene {
        MenuBarExtra("CRN", systemImage: "radio") {
            ContentView()
        }
        .menuBarExtraStyle(.window)

        Settings {
           SettingsView()
                .environment(settings)
        }
        .windowLevel(.floating)
    }
}
