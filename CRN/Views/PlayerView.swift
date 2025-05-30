//
//  Player.swift
//  CRN
//
//  Created by Grigory Avdyushin   on 03/04/2025.
//

import Combine
import SwiftUI

struct PlayerView: View {

    @Environment(\.openURL) var openURL
    @State private var viewModel = PlayerViewModel()

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                AsyncImage(url: viewModel.cover) { img in
                    img
                        .frame(width: 240, height: 240)
                        .padding()
                } placeholder: {
                    Image(systemName: "antenna.radiowaves.left.and.right")
                        .foregroundStyle(.gray)
                        .frame(width: 240, height: 240)
                        .padding()
                }
                .onTapGesture {
                    if let url = URL(string: NowPlayingService.supportURL) {
                        openURL(url)
                    }
                }
                ZStack {
                    Group {
                        Menu {
                            ForEach(Station.allCases, id: \.self) { station in
                                Button {
                                    viewModel.station = station
                                } label: {
                                    Text("\(station)")
                                }
                            }
                            Divider()
                            SettingsLink()
                            Button {
                                NSApplication.shared.terminate(nil)
                            } label: {
                                Text("Quit")
                            }
                        } label: {
                            EmptyView()
                        }
                        .menuStyle(.borderlessButton)
                    }
                    HStack {
                        Text(viewModel.station.attributedString)
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    .allowsHitTesting(false)
                }
                .padding(6)
                .background(viewModel.station.color)
                .tint(.white)
            }

            HStack(spacing: 0) {
                Button {
                    viewModel.playPause()
                } label: {
                    Image(systemName: viewModel.buttonImage)
                        .resizable()
                        .frame(width: 32,  height: 32)
                }
                .disabled(!viewModel.isReady)
                .buttonStyle(.plain)
                .foregroundStyle(.white)
                .focusable(false)
                .padding()

                VStack(alignment: .leading) {
                    Text(viewModel.title)
                        .font(.headline)
                        .foregroundStyle(.white)
                    Text(viewModel.subtitle)
                        .font(.subheadline)
                        .foregroundStyle(.white)
                }
                Spacer()
            }
            .background(LinearGradient(colors: [Color.black, Color.clear], startPoint: .center, endPoint: .top))
        }.task {
            try? await viewModel.refresh()
        }
        .border(Color(viewModel.station.color), width: 2)
    }
}

#Preview {
    PlayerView()
        .frame(width: 290)
}
