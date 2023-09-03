//
//  ModalScreens.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation

fileprivate protocol ModalScreensProtocol: CaseIterable {
    var title: String { get }
    func localized() -> String
}

enum ModalScreens {
    case aboutDetails
}

extension ModalScreens: ModalScreensProtocol {
    var title: String {
        switch self {
        case .aboutDetails:
            return "Details"
        }
    }
    
    func localized() -> String {
        NSLocalizedString(self.title, comment: "")
    }
}
