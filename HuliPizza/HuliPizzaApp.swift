//
//  HuliPizzaApp.swift
//  HuliPizza
//
//  Created by Anshaj Vats on 8/18/23.
//

import SwiftUI

@main
struct HuliPizzaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu: MenuModel().menu)
        }
    }
}
