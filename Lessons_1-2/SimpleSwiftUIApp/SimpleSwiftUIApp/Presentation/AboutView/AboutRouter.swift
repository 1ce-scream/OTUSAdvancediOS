//
//  AboutRouter.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import protocol SwiftUI.View

final class AboutRouter {
    static func destinationAboutDetails() -> some View {
        AboutDetailsConfigurator.configure()
    }
}
