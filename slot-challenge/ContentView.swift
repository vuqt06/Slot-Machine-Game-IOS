//
//  ContentView.swift
//  slot-challenge
//
//  Created by Vu Trinh on 6/22/21.
//

import SwiftUI

struct ContentView: View {
    @State var credit = 1000
    @State var slot1 = "apple"
    @State var slot2 = "cherry"
    @State var slot3 = "star"
    var arr = ["apple", "cherry", "star"]
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI Slots!")
                .font(.title)
            Spacer()
            Text("Credits: " + String(credit))
            Spacer()
            HStack {
                Spacer()
                Image(slot1).resizable().aspectRatio(contentMode: .fill).frame(width: 110.0, height: 110.0)
                Spacer()
                Image(slot2).resizable().aspectRatio(contentMode: .fill).frame(width: 110.0, height: 110.0)
                Spacer()
                Image(slot3).resizable().aspectRatio(contentMode: .fill).frame(width: 110.0, height: 110.0)
                Spacer()
            }
            Spacer()
            Button(action: {
                let ran1 = Int.random(in: 0...2)
                let ran2 = Int.random(in: 0...2)
                let ran3 = Int.random(in: 0...2)
                
                slot1 = arr[ran1]
                slot2 = arr[ran2]
                slot3 = arr[ran3]
                
                if ((ran1 == ran2) && (ran2 == ran3)) {
                    credit += 100
                }
                else {
                    credit -= 10
                }
                
            }, label: {
                Text("Spin")
                    .foregroundColor(Color.white)
                    .padding(.all, 13.0)
                    .frame(width: 100.0, height: 35.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                    
                    
                    
            })
            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .colorMultiply(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
