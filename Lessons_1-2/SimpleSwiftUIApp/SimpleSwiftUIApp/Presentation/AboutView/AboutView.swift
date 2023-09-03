//
//  AboutView.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import SwiftUI

struct AboutView: View {
    @State private var shouldShowDetails: Bool = false
    
    var body: some View {
        NavigationStack {
            Button {
                shouldShowDetails.toggle()
            } label: {
                Text("Show details")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.horizontal, AppConstants.horizontalPadding)
                    .padding(.vertical, AppConstants.verticalPadding)
                    .overlay {
                        RoundedRectangle(cornerRadius: AppConstants.cornerRadius)
                            .stroke(Color.green, lineWidth: AppConstants.lineWidth)
                    }
            }
            .sheet(isPresented: $shouldShowDetails) {
                print("Sheet dismissed")
            } content: {
                AboutRouter.destinationAboutDetails()
                    .presentationDetents([.medium, .large])
                    .presentationCornerRadius(AppConstants.cornerRadius)
            }
            .navigationTitle(MainTabbarTabs.aboutView.localized())
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
