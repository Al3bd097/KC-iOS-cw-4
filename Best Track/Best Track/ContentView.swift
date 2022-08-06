//
//  ContentView.swift
//  Best Track
//
//  Created by Max will on 8/6/22.
//

import SwiftUI

struct ContentView: View {
 @State var logo = "question"
    var body: some View {
        ZStack{
            Image("blue")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("ما هي المسارات المفضله لديك")
                    .font(.system(size: 30, weight: .medium, design: .serif))
                    .foregroundColor(.white)
                Image(logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    
                Text("IOS")
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(24)
                    .padding(4)
                    .onTapGesture {
                        logo = "apple"
                    }
                    .onLongPressGesture {
                        logo = "question"
                    }
                
                Text("Gamedev")
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.purple)
                    .cornerRadius(24)
                    .padding(4)
                    .onTapGesture {
                        logo = "unity"
                    }
                    .onLongPressGesture {
                        logo = "question"
                    }
                
                Text("Web")
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.cyan)
                    .cornerRadius(24)
                    .padding(4)
                    .onTapGesture {
                        logo = "web"
                    }
                    .onLongPressGesture {
                        logo = "question"
                    }
                
                Text("Android")
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(24)
                    .padding(4)
                    .onTapGesture {
                                logo = "android"
                    }
                    .onLongPressGesture {
                        logo = "question"
                    }
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
