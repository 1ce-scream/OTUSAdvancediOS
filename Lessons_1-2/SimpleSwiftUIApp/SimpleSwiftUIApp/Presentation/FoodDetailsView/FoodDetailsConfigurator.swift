//
//  FoodDetailsConfigurator.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation

final class FoodDetailsConfigurator {
    public static func configure(_ food: FoodModel) -> FoodDetailsView {
        FoodDetailsView(food)
    }
}
