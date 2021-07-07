//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Gino Sesia on 06/07/2021.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
