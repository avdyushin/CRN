//
//  SettingsView.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 27/05/2025.
//

import SwiftUI

struct SettingsView: View {

    @Environment(AppSettings.self) private var settings
    @Environment(\.appearsActive) private var appearsActive

    var body: some View {
        @Bindable var settings = settings
        Form {
            Section("Startup") {
                Toggle(isOn: $settings.launchAtLogin) {
                    Text("Launch CRN at Login")
                    Text("If selected, CRN will launch at login after using the \"Quit\" menu item.")
                }
            }
            HStack {
                Spacer()
                Text("Version \(AppSettings.version)")
                    .foregroundStyle(.secondary)
                    .font(.footnote)
            }
        }
        .frame(maxWidth: 480)
        .padding()
        .onChange(of: appearsActive) { _, isActive in
            if isActive {
                settings.verifyLaunchAtLogin()
            }
        }
        .onChange(of: settings.launchAtLogin) { _, isLaunchAtLogin in
            settings.toggleLaunchAtLogin(isLaunchAtLogin: isLaunchAtLogin)
        }
    }
}

#Preview {
    SettingsView()
        .environment(AppSettings())
}
