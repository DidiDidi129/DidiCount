import SwiftUI

struct ContentView: View {
    @AppStorage("counter1") var number1: Int = 0
    @AppStorage("counter2") var number2: Int = 0
    @AppStorage("counter4") var number4: Int = 0
    @AppStorage("counter3") var number3: Int = 0
    @AppStorage("current") var current: Int = 1
    @AppStorage("total") var total: Int = 3

    var body: some View {
        HStack {
            Text("DidiCount")
                .font(.system(size: 40))
                .padding()
                .bold()
            Button(action: {
                number1 = 0
                number2 = 0
                number3 = 0
                number4 = 0
            }) {
                HStack {
                    Image(systemName: "trash")                        
                    Text("Reset \n Counters")
                }
            }
        }
        VStack {
            
            
            Spacer()

            ScrollView(.vertical) {
                VStack(alignment: .center) {
                    HStack(alignment: .center) {
                        Button(action: { current = 1 }) {
                            CounterView(title: "Counter 1", count: $number1)
                                .modifier(HighlightModifier(isActive: current == 1))
                        }
                        Button(action: { current = 2 }) {
                            CounterView(title: "Counter 2", count: $number2)
                                .modifier(HighlightModifier(isActive: current == 2))
                        }
                    }
                    HStack(alignment: .center) {
                        Button(action: { current = 3 }) {
                            CounterView(title: "Counter 3", count: $number3)
                                .modifier(HighlightModifier(isActive: current == 3))
                        }
                        Button(action: { current = 4 }) {
                            CounterView(title: "Counter 4", count: $number4)
                                .modifier(HighlightModifier(isActive: current == 4))
                        }
                    }
                }
            }
            

            Spacer()

            // Next Counter Button
            if current == 1 {
                ButtonView(count: $number1, total: $total, current: $current)
            } else if current == 2 {
                ButtonView(count: $number2, total: $total, current: $current)
            } else if current == 3 {
                ButtonView(count: $number3, total: $total, current: $current)
            } else if current == 4 {
                ButtonView(count: $number4, total: $total, current: $current)
            }
        }
        .padding()
    }
}

struct HighlightModifier: ViewModifier {
    let isActive: Bool

    func body(content: Content) -> some View {
        content
            .padding()
            .background(isActive ? Color.blue.opacity(0.2) : Color.clear)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(isActive ? Color.blue : Color.gray, lineWidth: isActive ? 2 : 1)
            )
    }
}


#Preview {
    ContentView()
}
