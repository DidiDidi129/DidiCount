//
//  ContentView.swift
//  DidiCount
//
//  Created by Didi on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("counter1") var number1: Int = 0
    @AppStorage("counter2") var number2: Int = 0
    @AppStorage("current") public var current: Int = 1
    @AppStorage("total") var total: Int = 2

    var body: some View {
        VStack() {
            Text("DidiCount Alpha 0.1")
                .font(.system(size: 40))
            Spacer()
        }
        
        
        GroupBox {
            VStack {
                Text("Counter 1:")
                    .bold()
                    .font(.system(size: 25))
                Text("\(number1)")
                    .fontWeight(.bold)
                    .lineLimit(0)
                    .font(.system(size: 50))
                
                
            }
        }
        GroupBox {
            VStack {
                Text("Counter 2:")
                    .bold()
                    .font(.system(size: 25))
                Text("\(number2)")
                    .fontWeight(.bold)
                    .lineLimit(0)
                    .font(.system(size: 50))
                
                
            }
        }
        
        Spacer()
            .padding()
        Button(action: {
            current += 1
        }) {Text("swap")}
        if (current == 1) {
            GroupBox {
                HStack {
                    Button(action: {
                        self.number1 += 1
                    }) {
                        Image(systemName: "plus")
                            .imageScale(.large)
                            .foregroundStyle(.indigo)
                            .font(.system(size: 50))
                        Button(action: {
                            self.number1 -= 1
                        }) {
                            Image(systemName: "minus")
                                .imageScale(.large)
                                .foregroundStyle(.teal)
                                .font(.system(size: 30))
                        }
                    }
                }
            }
        }
        else if (current == 2) {
            GroupBox {
                HStack {
                    Button(action: {
                        self.number2 += 1
                    }) {
                        Image(systemName: "plus")
                            .imageScale(.large)
                            .foregroundStyle(.indigo)
                            .font(.system(size: 50))
                        Button(action: {
                            self.number2 -= 1
                        }) {
                            Image(systemName: "minus")
                                .imageScale(.large)
                                .foregroundStyle(.teal)
                                .font(.system(size: 30))
                        }
                    }
                }
            }
        }
        else if (current >= 3) {
            current = 1
        }
    }
}

    
    #Preview {
        ContentView()
    }
