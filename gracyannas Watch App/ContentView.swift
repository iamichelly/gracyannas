//
//  ContentView.swift
//  gracyannas
//
//  Created by mvitoriapereirac on 26/11/22.
//
import SwiftUI

struct ContentView: View {
//    @ObservedObject var userData: UserData
    @State private var selectedDays: [Bool] = [false, false, false, false, false, false, false]
    
    var body: some View {
        VStack {
       
            Text("Quais são meus dias de treino?")
                .scaledToFit()
                
            Spacer()

            HStack(alignment: .center){

                ZStack{
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 1)
                        .scaledToFit()
                    Text("Seg")

                }
                .scaledToFit()
                .onTapGesture {
                    selectedDays[0] = !selectedDays[0]
                    
                }
                
                ZStack{
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 1)
                        .scaledToFit()
                    Text("Ter")

                }
                .scaledToFit()
                
                
                
            }
            .scaledToFit()
            
            HStack{
                
                ZStack{
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 1)
                        .scaledToFit()
                    Text("Qua")
                }

                
                ZStack{
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 1)
                        .scaledToFit()
                    Text("Qui")
                }
                
                ZStack{
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 1)
                        .scaledToFit()
                    Text("Sex")
                }
//
//                Circle()
//                    .strokeBorder(Color.blue, lineWidth: 1)
//                    .scaledToFit()
//                Circle()
//                    .strokeBorder(Color.blue, lineWidth: 1)
//                    .scaledToFit()
            }
            
            HStack{
                ZStack{
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 1)
                        .scaledToFit()
                    Text("Sáb")

                }
                .scaledToFit()
                
                ZStack{
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 1)
                        .scaledToFit()
                    Text("Dom")

                }
                .scaledToFit()
                
            }
//
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
