//
//  BudgieApp.swift
//  Budgie
//
//  Created by Victor on 29/09/2023.
//

import SwiftUI

@main
struct BudgieApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
