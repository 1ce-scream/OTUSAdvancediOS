//
//  FoodsRouter.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import protocol SwiftUI.View

final class FoodsRouter {
    static func destinationFoodDetails(_ food: FoodModel) -> some View {
        FoodDetailsConfigurator.configure(food)
    }
}
