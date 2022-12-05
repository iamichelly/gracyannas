//
//  ContentView.swift
//  teste-qatar
//
//  Created by mvitoriapereirac on 26/11/22.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("Dias") var EscolheuDiasTreino = false
    @ObservedObject var userData: UserData = UserData()
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                NavigationLink("", destination: HomePage(progress: 0.6, doneWorkouts: 5, totalWorkouts: 6, isItOne: false, remainingWorkouts: 4).navigationBarBackButtonHidden(true), isActive: $EscolheuDiasTreino)
                    .toolbar(.hidden)
                
                VStack{
                    
                   
                    
                    TabView{
                        VStack {
                            
                            
                            Text("Quando eu treino?")
                            
                                .frame(alignment: .topLeading)
                                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            
                            
                            
                            HStack(spacing: 10){
                                
                                
                                ZStack{
                                    Button(action: {
                                        print("Round Action")
                                        userData.trainingDays[0].toggle()
                                        print(Storage.loadBooleanArray(data: userData.trainingDaysData))
                                        
                                    }) {
                                        Text("Seg")
                                            .scaledToFit()
                                            .foregroundStyle(userData.trainingDays[0] ? LinearGradient(gradient: Gradient(colors: [.black   ]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
                                            .background(userData.trainingDays[0] ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder(userData.trainingDays[0] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                                   
                                                                 )
                                                
                                                    .scaledToFit()
                                            )
                                        
                                        
                                        
                                    }
                                    .scaledToFit()
                                    
                                    //
                                    
                                }
                                .scaledToFit()
                                
                                
                                
                                ZStack{
                                    Button(action: {
                                        print("Round Action")
                                        userData.trainingDays[1].toggle()
                                        
                                    }) {
                                        Text("Ter")
                                            .scaledToFit()
                                            .foregroundStyle(userData.trainingDays[1] ? LinearGradient(gradient: Gradient(colors: [.    black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                        
                                            .background(userData.trainingDays[1] ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder(userData.trainingDays[1] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                                   
                                                                 )
                                                
                                                    .scaledToFit()
                                            )
                                        
                                        
                                    }
                                    .scaledToFit()
                                    
                                }
                                .scaledToFit()
                                
                                
                                
                            }
                            .scaledToFit()
                            
                            HStack{
                                
                                ZStack{
                                    Button(action: {
                                        print("Round Action")
                                        userData.trainingDays[2].toggle()
                                        
                                    }) {
                                        Text("Qua")
                                            .scaledToFit()
                                            .foregroundStyle(userData.trainingDays[2] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(userData.trainingDays[2] ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( userData.trainingDays[2] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                                   
                                                                 )
                                                
                                                    .scaledToFit()
                                            )
                                        
                                        
                                    }
                                    .scaledToFit()
                                }
                                
                                
                                ZStack{
                                    Button(action: {
                                        print("Round Action")
                                        userData.trainingDays[3].toggle()
                                        
                                    }) {
                                        Text("Qui")
                                            .scaledToFit()
                                            .foregroundStyle(userData.trainingDays[3] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(userData.trainingDays[3] ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( userData.trainingDays[3] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                                   
                                                                 )
                                                
                                                    .scaledToFit()
                                            )
                                        
                                        
                                    }
                                    .scaledToFit()
                                }
                                
                                ZStack{
                                    Button(action: {
                                        print("Round Action")
                                        userData.trainingDays[4].toggle()
                                        
                                    }) {
                                        Text("Sex")
                                            .scaledToFit()
                                            .foregroundStyle(userData.trainingDays[4] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(userData.trainingDays[4] ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( userData.trainingDays[4] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                                   
                                                                 )
                                                
                                                    .scaledToFit()
                                            )
                                        
                                        
                                    }
                                    .scaledToFit()
                                }
                                //
                                //                Circle()
                                //                    .strokeBorder(Color.blue, lineWidth: 1)
                                //                    .scaledToFit()
                                //                Circle()
                                //                    .strokeBorder(Color.blue, lineWidth: 1)
                                //                    .scaledToFit()
                            }
                            .scaledToFit()
                            
                            HStack(spacing: 20){
                                ZStack{
                                    Button(action: {
                                        print("Round Action")
                                        userData.trainingDays[5].toggle()
                                        
                                    }) {
                                        Text("Sáb")
                                            .scaledToFit()
                                            .foregroundStyle(userData.trainingDays[5] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(userData.trainingDays[5] ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( userData.trainingDays[5] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                                   
                                                                 )
                                                
                                                    .scaledToFit()
                                            )
                                        
                                        
                                    }
                                    .scaledToFit()
                                    
                                }
                                .scaledToFit()
                                
                                
                                
                                ZStack{
                                    Button(action: {
                                        print("Round Action")
                                        userData.trainingDays[6].toggle()
                                        
                                    }) {
                                        Text("Dom")
                                            .scaledToFit()
                                            .foregroundStyle(userData.trainingDays[6] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        
                                            .font(.system(size: 11.4))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 36, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(userData.trainingDays[6] ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( userData.trainingDays[6] ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                                   
                                                                 )
                                                
                                                    .scaledToFit()
                                            )
                                        
                                        
                                    }
                                    .scaledToFit()
                                    
                                }
                                .scaledToFit()
                                
                            }
                            .scaledToFit()
                            
                            
                            
                            
                        }
                        //        .padding()
                        
                        VStack{
                            Button(action: {
                                userData.trainingDaysData = Storage.archiveBooleanArray(object: userData.trainingDays)
                                userData.trainingAmountPerWeek = userData.trainingDays.filter{$0}.count
                                EscolheuDiasTreino.toggle()
                                
                                
                            }) {
                                Text("Me ajuda, vai!")
                                .foregroundStyle(EscolheuDiasTreino ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                
                                .padding(.all, 12)
                                .background(EscolheuDiasTreino ? RoundedRectangle(cornerRadius: 20).fill(
                                    LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                ) : RoundedRectangle(cornerRadius: 20).fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                            
                            
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                    
                                        .strokeBorder( EscolheuDiasTreino ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
                                                        LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                                       
                                                     )
                                    )
                            }
                        }
                        
                    
                        
                        
                    }
                    
                }

            }
        }
       
       
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

extension Dictionary where Value: Equatable {
    func allKeys(forValue val: Value) -> [Key] {
        return self.filter { $1 == val }.map { $0.0 }
    }
}
