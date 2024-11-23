//
//  CurrentView.swift
//  DidiCount
//
//  Created by Didi on 11/23/24.
//

import SwiftUI

struct CurrentView: View {
    @Binding var current: Int
    
    var body: some View {
        GroupBox {
            VStack {
                Text("Current: \(current)")
                    .bold()
                    .font(.system(size: 25))
            }
        }
    }
}
