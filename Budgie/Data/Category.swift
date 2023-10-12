//
//  CategoryModel.swift
//  Budgie
//
//  Created by Victor on 30/09/2023.
//

import Foundation

struct Category: Identifiable {
    var id: String = UUID().uuidString
    let name: String
    let description: String
    let icon: [String]
    let IconName: [String]
}
