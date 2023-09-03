//
//  StrartConfigurator.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation
import struct SwiftUI.Binding

final class StartConfigurator {
    public static func configure(_ selectedTab: Binding<MainTabbarTabs>) -> StartView {
        StartView(selectedTab)
    }
}
