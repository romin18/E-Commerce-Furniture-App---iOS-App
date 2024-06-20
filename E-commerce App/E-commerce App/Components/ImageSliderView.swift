//
//  ImageSliderView.swift
//  E-commerce App
//
//  Created by student on 03/06/24.
//

import SwiftUI

struct ImageSliderView: View {
    
    @State private var currentIndex = 0
    var slides: [String] = ["image1","image2","image3","image4","image5"]
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[currentIndex])
                    .resizable()
                    .frame(width: 360, height: 150)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true){timer in
                if self.currentIndex + 1 == self.slides.count{
                    self.currentIndex = 0
                }
                else{
                    self.currentIndex += 1
                }
            }
        }
        
    }
}

#Preview {
    ImageSliderView()
}
