//
//  AboutView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            Text("About authors")
                .font(.title)
                .navigationTitle(MainTabbarTabs.aboutView.localized())
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
