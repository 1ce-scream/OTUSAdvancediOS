//
//  FoodsViewModel.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation

protocol FoodsViewModelProtocol: ObservableObject {
    var foods: [FoodModel] { get }
}

final class FoodsViewModel: FoodsViewModelProtocol {
    @Published private(set) var foods: [FoodModel] = []
    
    init() {
        fetchFoods()
    }
    
    private func fetchFoods() {
        foods = [
            .sample(name: "Strawberry", image: "🍓"),
            .sample(name: "Blueberry", image: "🫐"),
            .sample(name: "Banana", image: "🍌"),
            .sample(name: "Pickle", image: "🥒")
        ]
    }
}
