//
//  Homescreen.swift
//  gracyannas Watch App
//
//  Created by livia on 01/12/22.
//

import Foundation
import SwiftUI

struct Homescreen: View {
    
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
                
                ProgressView(value: progress)
                                .progressViewStyle(.circular)
                                .scaleEffect(2)
                                .colorMultiply(.pink)
                
                
                Text("\(doneWorkouts)/\(totalWorkouts)")
                    .font(.system(size: 36, weight: .medium))
                
            }
            Spacer()
                .frame(height:36)
            
            Text(isItOne ? "Falta só \(remainingWorkouts) treino, vamo!" : "Faltam só \(remainingWorkouts) treinos, vamo!")
                .font(.system(size: 16, weight: .medium))
            
          
            
        }
        
        
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen(progress: 0.6, doneWorkouts: 5, totalWorkouts: 6, isItOne: false, remainingWorkouts: 4)
    }
}


