//
//  ContentView.swift
//  gracyannas
//
//  Created by mvitoriapereirac on 26/11/22.
//
import SwiftUI
import UserNotifications


    struct ContentView: View {
        var body: some View {
            VStack {
                
                Circle()
                    .foregroundColor(.pink)
                Text("Agende uma notificação em 5s:")
            
                Button("Agendar"){
                    let content = UNMutableNotificationContent()
                    content.title = "O de hoje tá pago?"
                    content.body = "Antes o treino só valia com foto 📸, agora só vale se tu confirmar aqui embaixo:"
                    content.sound = .defaultCritical
                    content.categoryIdentifier = "myCategory"
                    content.attachments = []
                    
                    
                    let action = UNNotificationAction(identifier: "my_action",
                                                      title: "TÁ PAGO 💪",
                                                      options: [])
                    
                    let anotherAction = UNNotificationAction(identifier: "another_action",
                                                             title: "Tô devendo 😫",
                                                             options: [])
                    

                    let category = UNNotificationCategory(identifier: "myCategory", actions: [action, anotherAction], intentIdentifiers: [], options: [])
                    
                    UNUserNotificationCenter.current().setNotificationCategories([category])
                    
                    var dateInfo = DateComponents()
                    dateInfo.hour = 20
                    dateInfo.minute = 12
                    print(dateInfo)

                    let trigger = UNCalendarNotificationTrigger(dateMatching: dateInfo, repeats: true)

                    let request = UNNotificationRequest(identifier: "milk", content: content, trigger: trigger)
                    
                    UNUserNotificationCenter.current().add(request) { (error) in
                        if let error = error{
                            print(error.localizedDescription)
                        }else{
                            print("notif. agendada")
                        }
                    }
                    
                    
                }
                
            }
            .padding()
            .onAppear(perform: { UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (success, error) in
                if success{
                print("All set")
                } else if let error = error {
                print(error.localizedDescription)
                }
                }
                
            })
        }
    }
    
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
