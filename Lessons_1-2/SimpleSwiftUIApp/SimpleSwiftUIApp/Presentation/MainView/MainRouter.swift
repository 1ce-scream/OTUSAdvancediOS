//
//  MainRouter.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 02.09.2023.
//

import protocol SwiftUI.View
import struct SwiftUI.Text
import struct SwiftUI.Image
import struct SwiftUI.Binding

final class MainRouter {
    static func firstTab(_ selectedTab: Binding<MainTabbarTabs>) -> some View {
        StartConfigurator.configure(selectedTab)
            .tabItem {
                Image(systemName: MainTabbarTabs.startView.icon)
                Text(MainTabbarTabs.startView.title)
            }
            .tag(MainTabbarTabs.startView)
    }

    static func foodsTab() -> some View {
        FoodsConfigurator.configure()
            .tabItem {
                Image(systemName: MainTabbarTabs.foodListView.icon)
                Text(MainTabbarTabs.foodListView.title)
            }
            .tag(MainTabbarTabs.foodListView)
    }

    static func aboutTab() -> some View {
        AboutConfigurator.configure()
            .tabItem {
                Image(systemName: MainTabbarTabs.aboutView.icon)
                Text(MainTabbarTabs.aboutView.title)
            }
            .tag(MainTabbarTabs.aboutView)
    }
}
