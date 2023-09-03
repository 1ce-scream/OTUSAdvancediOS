//
//  MainView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 02.09.2023.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: MainTabbarTabs = .startView
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MainRouter.firstTab($selectedTab)
            MainRouter.foodsTab()
            MainRouter.aboutTab()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
