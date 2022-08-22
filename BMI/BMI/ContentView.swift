//
//  ContentView.swift
//  BMI
//
//  Created by Hussain Alwazzan on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        VStack{
            
            Text("Weight Calculator")
                .font(.system(size: 25))
                .frame(width: 200, height: 100)
                .font(.title2)
            
            
            Image("WA")
            
            Text("Enter Your Weight")
                .font(.title3)
                
            Spacer()
            TextField("Weight", text: $weight)
            TextField("Height", text: $height)
            
            Button{ result = bmiCalc(w: Double (weight) ?? 00, h: Double (height) ?? 00)
                
                if result <= 20 {
                    health = "Weak"
                }
                
                else if result <= 25 {
                    health = "Good!"
                }
                
                else   {
                    health = "Obese"
                }
                
                
            } label: {
                Text("Calculate")
                    .frame(width: 150, height: 60)
                    .background(.green.opacity(0.9))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding()
            }
            
            Text("BMI = \(result)")
            Text("Condetion = \(health)")
                .padding()
                .font(.title2)
            
            Spacer()
        }
    }
}

func bmiCalc(w: Double, h: Double) -> Double{ return w / (h * h)
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
