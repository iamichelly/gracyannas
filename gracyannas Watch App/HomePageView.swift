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
    @ObservedObject var homePageController = HomePageController()
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
                //MARK: - olhem o comentario la embaixo
                                ProgressView(value: Double(userData.trainingsCompletedThisWeek)/Double(userData.trainingAmountPerWeek))
//                ProgressView(value: Double(3)/Double(userData.trainingAmountPerWeek))
                
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
                    .colorMultiply(.black)
                    .overlay(
                        Circle()
//                            .trim(from: 0.0, to: min(Double(2)/Double(userData.trainingAmountPerWeek), 1.0))
                            .trim(from: 0.0, to: max(Double(userData.trainingsCompletedThisWeek)/Double(userData.trainingAmountPerWeek), 0.01))

                            .stroke(
                                AngularGradient(
                                    gradient: Gradient(
                                        colors: [.yellow, .pink, .pink, .orange, .yellow]),
                                    center: .center
                                ),
                                style: StrokeStyle(lineWidth: 15.0,
                                                   lineCap: .round,
                                                   lineJoin: .round))
                            .rotationEffect((Angle(degrees: 270)))
                            .animation(.easeInOut(duration: 1.0), value: progress)
                            .scaledToFit()
                            .frame(width: 83, height: 83)
                            .padding()
                        
                    )
            
                
//                    .(LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomLeading))
                    

                
                
                Text("\(userData.trainingsCompletedThisWeek)/\(userData.trainingAmountPerWeek)")
                    .font(.system(size: 36, weight: .medium))
                
            }
          
            
            Spacer()
                .frame(height:36)
            
            Text(isItOne ? "Falta só \(userData.trainingAmountPerWeek - userData.trainingsCompletedThisWeek) treino, vamo!" : "Faltam só \(userData.trainingAmountPerWeek - userData.trainingsCompletedThisWeek) treinos, vamo!")
                .font(.system(size: 16, weight: .medium))
            
            
            
        }
        .onAppear{
            homePageController.newWeekStarted()
            
        }
        
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(progress: 0.6, doneWorkouts: 5, totalWorkouts: 6, isItOne: false, remainingWorkouts: 4)
    }
}

class HomePageController: ObservableObject {
    let dateTrack = DateTrack()
    @ObservedObject var userData: UserData = UserData()
    
    
    func newWeekStarted() {
        if dateTrack.isTodayMonday() == true {
            userData.trainingsCompletedThisWeek = 0
        }
    }
}


//MARK: - de onde eu peguei o circulo pintadinho de gradiente
//struct CircularProgressView: View {
//
//    var progress = 10.0
//
//    var body: some View {
//
//        ZStack {
//            Circle()
//                .stroke(lineWidth: 20)
//                .foregroundColor(.gray)
//                .opacity(0.1)
//
//            Circle()
//                .trim(from: 0.0, to: min(progress, 1.0))
//                .stroke(
//                    AngularGradient(
//                        gradient: Gradient(
//                            colors: [.blue, .green, .blue]),
//                            center: .center
//                        ),
//                        style: StrokeStyle(lineWidth: 15.0,
//                                           lineCap: .round,
//                                           lineJoin: .round))
//                .rotationEffect((Angle(degrees: 270)))
//                .animation(.easeInOut(duration: 1.0), value: progress)
//        }
//        .frame(width: 250, height: 250)
//        .padding()
//    }
//}
