//
//  ColoredButton.swift
//  ChallengeQatar Watch App
//
//  Created by mvitoriapereirac on 03/12/22.
//

import Foundation
import SwiftUI
import UserNotifications

struct HomePage: View {
    @ObservedObject var userData: UserData = UserData()
    @ObservedObject var foiTreinar = NotificationDelegate()
    @State var progress: Double
    @State var doneWorkouts: Int
    @State var totalWorkouts: Int
    @State var isItOne: Bool
    @State var remainingWorkouts: Int
    
    fileprivate func sendNotifications(_ content: UNMutableNotificationContent, weekday: Int) {
        var dateInfo = DateComponents()
        dateInfo.weekday = weekday
        dateInfo.hour = 23
        dateInfo.minute = 14
        dateInfo.second = 30
        print("luquinhas vai tatuar a lorde:" + String(weekday))
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateInfo, repeats: true)
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(request) { (error) in
            if let error = error{
                print(error.localizedDescription)
            }else{
                print("notif. agendada")
            }
        }
    }
    
    var body: some View {
        
        VStack{
            
            Text("Avanço semanal")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.orange)
            
            Spacer()
                .frame(height: 36)
            
            ZStack {
                
                ProgressView(value: Double(foiTreinar.foiTreinar)/Double(userData.trainingAmountPerWeek))
                    .progressViewStyle(.circular)
                    .scaleEffect(2)
                    .colorMultiply(.pink)
                
                
                Text("\(foiTreinar.foiTreinar)/\(userData.trainingAmountPerWeek)")
                    .font(.system(size: 36, weight: .medium))
                
            }
            Spacer()
                .frame(height:36)
            
            Text(isItOne ? "Falta só \(userData.trainingAmountPerWeek - foiTreinar.foiTreinar) treino, vamo!" : "Faltam só \(userData.trainingAmountPerWeek - foiTreinar.foiTreinar) treinos, vamo!")
                .font(.system(size: 16, weight: .medium))
            
        
            
        }.onAppear{

                let content = UNMutableNotificationContent()
                content.title = "O de hoje tá pago?"
                content.body = "Antes o treino só valia com foto 📸, agora só vale se tu confirmar aqui embaixo:"
                content.sound = .defaultCritical
                content.categoryIdentifier = "myCategory"
                content.attachments = []
            
               


                let action = UNNotificationAction(identifier: "my_action",
                                                  title: "Eu fui/Eu vou 💪",
                                                  options: [])

                let anotherAction = UNNotificationAction(identifier: "another_action",
                                                         title: "Nem fui/Nem vou 😫",
                                                         options: [])


                let category = UNNotificationCategory(identifier: "myCategory", actions: [action, anotherAction], intentIdentifiers: [], options: [])

                UNUserNotificationCenter.current().setNotificationCategories([category])
            
                userData.trainingDays = Storage.loadBooleanArray(data: userData.trainingDaysData)
                
            //segunda
                if userData.trainingDays[0] == true {
                    let content = UNMutableNotificationContent()
                    content.title = "A malvadeza começa hoje!"
                    content.body = "Segunda é dia de maldade, bora suar 🏋🏽💦"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    sendNotifications(content, weekday: 2)
                }
            //terça
                if userData.trainingDays[1] == true {
                    let content = UNMutableNotificationContent()
                    content.title = "E esse bundão aí?"
                    content.body = "E essa bunda maravilhosa, vamo crescer? 🍑"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    sendNotifications(content, weekday: 3)
                }
            //quarta
                if userData.trainingDays[2] == true {
                    let content = UNMutableNotificationContent()
                    content.title = "Eita como cresce!😮‍💨"
                    content.body = "Bora puxar um ferro?"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    sendNotifications(content, weekday: 4)
                }
            //quinta
                if userData.trainingDays[3] == true {
                    let content = UNMutableNotificationContent()
                    content.title = "Chegamos na quinta..."
                    content.body = "Mais um pouquinho! O ÚLTIMO GÁS!!! Dale, dale, daleeeee"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    sendNotifications(content, weekday: 5)
                }
            //sexta
                if userData.trainingDays[4] == true {
                    let content = UNMutableNotificationContent()
                    content.title = "DIA DE PERNA! 😡"
                    content.body = "Hoje você vai ficar sem andar... Bora deixar essa coxa explodinhdo de gostosa? 🍗"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    sendNotifications(content, weekday: 6)
                }
            //sabo
                if userData.trainingDays[5] == true {
                    let content = UNMutableNotificationContent()
                    content.title = "DIA DE PEITO PORRA!"
                    content.body = "QUEM É QUE VAI SAIR EXPLODINDO DA ACADEMIA? 💣"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    sendNotifications(content, weekday: 7)
                }
            //dumingo
                if userData.trainingDays[6] == true {
                    let content = UNMutableNotificationContent()
                    content.title = "Hoje vale por 2!"
                    content.body = "Quem treina dia de domingo ganha massa muscular em dobro! Simbora monstra 💪"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    sendNotifications(content, weekday: 1)
                }

        }
        
        
    }
}
struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage(progress: 0.6, doneWorkouts: 5, totalWorkouts: 6, isItOne: false, remainingWorkouts: 4)
    }
}
