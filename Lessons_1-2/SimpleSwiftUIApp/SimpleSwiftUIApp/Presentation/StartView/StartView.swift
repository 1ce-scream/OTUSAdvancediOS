//
//  StartView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import SwiftUI

struct StartView: View {
    @Binding private var selectedTab: MainTabbarTabs
    
    init(
        _ selectedTab: Binding<MainTabbarTabs>
    ) {
        self._selectedTab = selectedTab
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .foregroundColor(.blue)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.headline)
                Button {
                    withAnimation {
                        selectedTab = .foodListView
                    }
                } label: {
                    Text("Go to food tab")
                        .foregroundColor(.white)
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color.green)
                        }
                }

            }
            .navigationTitle(MainTabbarTabs.startView.localized())
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(.constant(.startView))
    }
}
