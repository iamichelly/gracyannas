//
//  gracyannasApp.swift
//  gracyannas Watch App
//
//  Created by lrsv on 30/11/22.
//

import SwiftUI

@main
struct gracyannas_Watch_AppApp: App {
    var body: some Scene {
        var contentView = OnboardingView()
        
        WindowGroup {
            if contentView.EscolheuDiasTreino == false {
                OnboardingView()

            } else {
                OnboardingView()
            }
        }
    }
}
