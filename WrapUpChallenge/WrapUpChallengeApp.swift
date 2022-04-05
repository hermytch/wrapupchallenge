//
//  WrapUpChallengeApp.swift
//  WrapUpChallenge
//
//  Created by Lukas Herman on 05.04.2022.
//

import SwiftUI

@main
struct WrapUpChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ContentModel())
        }
    }
}
