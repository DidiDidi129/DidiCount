//
//  ButtonView.swift
//  DidiCount
//
//  Created by Didi on 11/23/24.
//

import SwiftUICore
import SwiftUI

struct ButtonView: View {
    @Binding var count: Int
    @Binding var total: Int
    @Binding var current: Int
    var body: some View {
        GroupBox {
            VStack {
                HStack {
                    Button(action: { count += 1 }) {
                        Image(systemName: "plus")
                            .imageScale(.large)
                            .foregroundStyle(.indigo)
                            .font(.system(size: 30))
                    }
                    Button(action: { count -= 1 }) {
                        Image(systemName: "minus")
                            .imageScale(.large)
                            .foregroundStyle(.teal)
                            .font(.system(size: 30))
                    }
                    Button(action: {
                                    // Increment current, reset if it exceeds total
                                    current = (current >= total) ? 1 : current + 1
                                }) {
                                    Image(systemName: "rectangle.2.swap")
                                        .imageScale(.large)
                                        .foregroundStyle(.indigo)
                                        .font(.system(size: 30))
                                }
                }
            }
            
        }
        .padding()
    }
}
