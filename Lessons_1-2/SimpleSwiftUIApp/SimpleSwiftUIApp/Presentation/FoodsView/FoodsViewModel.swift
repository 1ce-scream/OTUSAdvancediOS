//
//  FoodsViewModel.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation

protocol FoodsViewModelProtocol: ObservableObject {
    var foods: [FoodModel] { get }
    var selectedFood: FoodModel? { get }
    func setSelectedFood(_ food: FoodModel)
    func clearSelectedFood()
}

final class FoodsViewModel: FoodsViewModelProtocol {
    @Published private(set) var foods: [FoodModel] = []
    @Published private(set) var selectedFood: FoodModel?
    
    init() {
        fetchFoods()
    }
    
    private func fetchFoods() {
        foods = [
            .sample(name: "Strawberry", image: "🍓", isFavourite: true),
            .sample(name: "Blueberry", image: "🫐"),
            .sample(name: "Banana", image: "🍌", isFavourite: true),
            .sample(name: "Pickle", image: "🥒")
        ]
    }
    
    func setSelectedFood(_ food: FoodModel) {
        selectedFood = food
    }
    
    func clearSelectedFood() {
        selectedFood = nil
    }
}
