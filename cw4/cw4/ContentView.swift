//
//  ContentView.swift
//  cw4
//
//  Created by Max will on 8/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var mark = ""
    @State var grade = ""
    var body: some View {
        ZStack{
            Image("green")
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 2)
            VStack{
                Text("Grades calculator")
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .medium, design: .serif))
                    .shadow(radius: 3)
                Spacer()
                Image("Calculator")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .shadow(radius: 20)
                HStack {
                    Spacer()
                    TextField("Enter your percentage", text: $mark)
                        .keyboardType(.decimalPad)
                        .padding(15)
                        .background(.white.opacity(0.5))
                    .cornerRadius(15)
                    .shadow(radius: 3)
                    
                    Spacer()
                }
                Text("Calculate")
                    .font(.system(size: 25, weight: .medium, design: .serif))
                    .padding(10)
                    .foregroundColor(.black)
                    .background(.white.opacity(0.34))
                    .cornerRadius(10)
                    .onTapGesture {
                        if (Double)(mark) ?? 0 > 100 {
                            grade = "Enter from 1-100"
                        }
                        
                        else if (Double(mark) ?? 0) == 100{
                            grade = "Full Mark"
                        }
                        else if (Double(mark) ?? 0) >= 90{
                            grade = "Amazing"
                        }
                        else if (Double(mark) ?? 0) >= 80{
                            grade = "Well done"
                        }
                        else if (Double(mark) ?? 0) >= 70{
                            grade = "Good"
                        }
                        else if (Double(mark) ?? 0) >= 60{
                            grade = "Fair"
                        }
                        else if (Double(mark) ?? 0) >= 60 {
                            grade = "Fail"
                        }
                    }
                Spacer()
                Text("\(grade)")
                    .foregroundColor(.white)
                    .font(.system(size: 60, weight: .medium, design: .serif))
                    

                
                Spacer()
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
