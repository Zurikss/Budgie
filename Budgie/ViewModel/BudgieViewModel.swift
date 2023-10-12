//
//  BudgieViewModel.swift
//  Budgie
//
//  Created by Victor on 29/09/2023.
//

import Foundation
import CoreData
import SwiftUI
import Combine

class BudgieViewModel: ObservableObject {
    @Published var category: [Category]
    @Published var categorySelected: Category? = nil
    @Published var categoryIsPressed: Bool = false
    @Published var selectedIconIndex: [String: Bool] = [:]
    let coreDataManager = CoreDataManager.instance
    
    init() {
        let category = CategoryData.categories
        self.category = category
        fetchData()
    }

    // publishing the array of bill properties
    @Published var bills: [BillEntity] = []

    func fetchData() {
        let request = NSFetchRequest<BillEntity>(entityName: "BillEntity")
        
        do {
            bills = try coreDataManager.context.fetch(request)
        } catch let error {
            print("Error while fetching: \(error)")
        }
    }
}

