//
//  ContentView.swift
//  teste-qatar
//
//  Created by mvitoriapereirac on 26/11/22.
//
import SwiftUI

struct OnboardingView: View {
    @AppStorage("Seg") var isClickedSeg = false
    @AppStorage("Ter") var isClickedTer = false
    @AppStorage("Qua") var isClickedQua = false
    @AppStorage("Qui") var isClickedQui = false
    @AppStorage("Sex") var isClickedSex = false
    @AppStorage("Sab") var isClickedSab = false
    @AppStorage("Dom") var isClickedDom = false
    
    @AppStorage("Dias") var EscolheuDiasTreino = false
    
    
    var body: some View {
        
        NavigationView{
            ZStack{
                NavigationLink("", destination: HomePage().navigationBarBackButtonHidden(true), isActive: $EscolheuDiasTreino)
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
                                        self.isClickedSeg.toggle()
                                        
                                    }) {
                                        Text("Seg")
                                            .scaledToFit()
                                            .foregroundStyle(isClickedSeg ? LinearGradient(gradient: Gradient(colors: [.black   ]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
                                            .background(isClickedSeg ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( isClickedSeg ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
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
                                        self.isClickedTer.toggle()
                                        
                                    }) {
                                        Text("Ter")
                                            .scaledToFit()
                                            .foregroundStyle(isClickedTer ? LinearGradient(gradient: Gradient(colors: [.    black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                        
                                            .background(isClickedTer ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( isClickedTer ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
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
                                        self.isClickedQua.toggle()
                                        
                                    }) {
                                        Text("Qua")
                                            .scaledToFit()
                                            .foregroundStyle(isClickedQua ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(isClickedQua ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( isClickedQua ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
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
                                        self.isClickedQui.toggle()
                                        
                                    }) {
                                        Text("Qui")
                                            .scaledToFit()
                                            .foregroundStyle(isClickedQui ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(isClickedQui ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( isClickedQui ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
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
                                        self.isClickedSex.toggle()
                                        
                                    }) {
                                        Text("Sex")
                                            .scaledToFit()
                                            .foregroundStyle(isClickedSex ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(isClickedSex ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( isClickedSex ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
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
                                        self.isClickedSab.toggle()
                                        
                                    }) {
                                        Text("Sáb")
                                            .scaledToFit()
                                            .foregroundStyle(isClickedSab ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        
                                            .font(.system(size: 12))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 35, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(isClickedSab ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( isClickedSab ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
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
                                        self.isClickedDom.toggle()
                                        
                                    }) {
                                        Text("Dom")
                                            .scaledToFit()
                                            .foregroundStyle(isClickedDom ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                        
                                            .font(.system(size: 11.4))
                                        
                                            .frame(width: 25, height: 25)
                                        //                            .clipShape(Circle())
                                            .padding(.all, 10)
//                                            .frame(width: 36, height: 25)
//                                        //                            .clipShape(Circle())
//                                            .padding(.all, 12)
                                            .background(isClickedDom ? Circle().fill(
                                                LinearGradient(gradient: Gradient(colors: [.yellow, .orange, .pink, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                            ) : Circle().fill(LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)))
                                        
                                        
                                            .overlay(
                                                Circle()
                                                
                                                    .strokeBorder( isClickedDom ? LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomLeading) :
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
