//
//  RemindThemApp.swift
//  RemindThem
//
//  Created by Parker Jackman on 3/6/24.
//

import SwiftUI

@main
struct RemindThemApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
