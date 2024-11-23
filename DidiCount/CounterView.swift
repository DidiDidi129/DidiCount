//
//  CounterView.swift
//  DidiCount
//
//  Created by Didi on 11/23/24.
//

import SwiftUI

struct CounterView: View {
    let title: String
    @Binding var count: Int

    var body: some View {
        GroupBox {
            VStack {
                Text(title)
                    .bold()
                    .font(.system(size: 25))
                Text("\(count)")
                    .fontWeight(.bold)
                    .font(.system(size: 50))
            }
        }
        .padding()
    }
}
