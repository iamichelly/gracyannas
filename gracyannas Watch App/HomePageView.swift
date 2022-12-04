//
//  ColoredButton.swift
//  ChallengeQatar Watch App
//
//  Created by mvitoriapereirac on 03/12/22.
//

import Foundation
import SwiftUI

struct HomePage: View {
    @ObservedObject var userData: UserData = UserData()
    var body: some View {

        Text("home page")
        Button(action: {        print(Storage.loadBooleanArray(data: userData.trainingDaysData))}) {
            Text("Dias salvos")
        }

    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
