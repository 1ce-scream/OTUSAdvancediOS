//
//  FoodsConfigurator.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation

final class FoodsConfigurator {
    public static func configure() -> FoodsView {
        let viewModel: FoodsViewModel = .init()
        return FoodsView(viewModel)
    }
}
