//
//  AppSettings.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 27/05/2025.
//

import SwiftUI
import ServiceManagement

@Observable
final class AppSettings {

    private static var status: SMAppService.Status { SMAppService.mainApp.status }

    static let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""

    var launchAtLogin: Bool

    init() {
        launchAtLogin = Self.status == .enabled
    }

    func toggleLaunchAtLogin(isLaunchAtLogin: Bool) {
        if isLaunchAtLogin {
            try? SMAppService.mainApp.register()
        } else {
            try? SMAppService.mainApp.unregister()
        }
    }

    func verifyLaunchAtLogin() {
        launchAtLogin = Self.status == .enabled
    }
}
