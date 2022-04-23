//
//  SwiftUIReduxDemoApp.swift
//  SwiftUIReduxDemo
//
//  Created by Lebron Zeng on 2022/4/23.
//

import SwiftUI

@main
struct SwiftUIReduxDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
