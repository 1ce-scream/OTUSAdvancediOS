//
//  FoodModel.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation

protocol FoodModelProtocol: Identifiable, Codable {
    var id: UUID { get }
    var name: String { get set }
    var image: String { get set }
    var isFavourite: Bool { get set }
}

struct FoodModel: FoodModelProtocol {
    internal var id: UUID
    var name: String
    var image: String
    var isFavourite: Bool
    
    init(
        id: UUID = UUID(),
        name: String,
        image: String,
        isFavourite: Bool = false
    ) {
        self.id = id
        self.name = name
        self.image = image
        self.isFavourite = isFavourite
    }
}

extension FoodModel {
    static func sample(name: String, image: String, isFavourite: Bool = false) -> Self {
        return FoodModel(name: name, image: image, isFavourite: isFavourite)
    }
}
