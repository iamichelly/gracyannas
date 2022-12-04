//
//  GifView.swift
//  gracyannas Watch App
//
//  Created by sofia.ribeiro on 04/12/22.
//

import SwiftUI

struct GifView: View {
    
    private let images = (0...29).map { String(format: "terry%d", $0) }.map { Image($0) }
    
    var body: some View {
        VStack {

            Text("O que o frango tem que você não tem?")
            
            AnimatingImage(images: images)
        }
        .padding()
    }
    
    struct AnimatingImage: View {
        let images: [Image]
        
        @ObservedObject private var counter = Counter(interval: 0.035)
        
        var body: some View {
            images[counter.value % images.count]
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 80, alignment: .center)
            
        }
    }
    
    private class Counter: ObservableObject {
        private var timer: Timer?
        
        @Published var value: Int = 0
        
        init(interval: Double) {
            timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in self.value += 1 }
        }
    }
}
struct GifView_Previews: PreviewProvider {
    static var previews: some View {
        GifView()
    }
}
