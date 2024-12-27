//
//  GolfLogixStudyApp.swift
//  GolfLogixStudy
//
//  Created by Abdul Saleem Mohamed Faheem on 2024-12-27.
//

import SwiftUI

@main
struct GolfLogixStudyApp: App {
    init(){
        GLSDKSettings.initialize(withKey: "API_KEY")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
