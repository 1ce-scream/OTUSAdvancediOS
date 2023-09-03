//
//  MainTabbarTabs.swift
//  SimpleSwiftUIApp
//
//  Created by Vitaliy Talalay on 03.09.2023.
//

import Foundation

protocol TabsProtocol: CaseIterable  {
    var title: String { get }
    var icon: String { get }
    func localized() -> String
}

enum MainTabbarTabs: String {
    case startView, foodListView, aboutView
}

extension MainTabbarTabs: TabsProtocol {
    var title: String {
        switch self {
        case .startView:
            return "First"
        case .foodListView:
            return "Foods"
        case .aboutView:
            return "About"
        }
    }
    
    var icon: String {
        switch self {
        case .startView:
            return "star.fill"
        case .foodListView:
            return "list.bullet"
        case .aboutView:
            return "person.crop.circle"
        }
    }
    
    func localized() -> String {
        NSLocalizedString(self.title, comment: "")
    }
}
