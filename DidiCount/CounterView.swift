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
            VStack(spacing: 8) { // Reduce spacing between text elements
                Text(title)
                    .bold()
                    .font(.system(size: 18)) // Smaller font size for title
                Text("\(count)")
                    .fontWeight(.bold)
                    .font(.system(size: 36)) // Smaller font size for count
            }
        }
        .padding(8) // Reduce padding for the GroupBox
        .frame(width: 140, height: 140) // Set explicit width and height
    }
}
