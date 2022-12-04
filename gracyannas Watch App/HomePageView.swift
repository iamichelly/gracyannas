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
    @State var progress: Double
    @State var doneWorkouts: Int
    @State var totalWorkouts: Int
    @State var isItOne: Bool
    @State var remainingWorkouts: Int
    
    var body: some View {
        
        VStack{
            
            Text("Avanço semanal")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.orange)
                
            Spacer()
                .frame(height: 36)
            
            ZStack {
                
                ProgressView(value: Double(userData.trainingsCompletedThisWeek)/Double(userData.trainingAmountPerWeek))
                                .progressViewStyle(.circular)
                                .scaleEffect(2)
                                .colorMultiply(.pink)
                
                
                Text("\(userData.trainingsCompletedThisWeek)/\(userData.trainingAmountPerWeek)")
                    .font(.system(size: 36, weight: .medium))
                
            }
            Spacer()
                .frame(height:36)
            
            Text(isItOne ? "Falta só \(userData.trainingAmountPerWeek - userData.trainingsCompletedThisWeek) treino, vamo!" : "Faltam só \(userData.trainingAmountPerWeek - userData.trainingsCompletedThisWeek) treinos, vamo!")
                .font(.system(size: 16, weight: .medium))
            
          
            
        }
        
        
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(progress: 0.6, doneWorkouts: 5, totalWorkouts: 6, isItOne: false, remainingWorkouts: 4)
    }
}
