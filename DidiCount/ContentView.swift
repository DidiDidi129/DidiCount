import SwiftUI

struct ContentView: View {
    @AppStorage("counter1") var number1: Int = 0
    @AppStorage("counter2") var number2: Int = 0
    @AppStorage("current") var current: Int = 1
    @AppStorage("total") var total: Int = 2

    var body: some View {
        VStack {
            Text("DidiCount Beta 1")
                .font(.system(size: 40))
                .padding()
            Spacer()

            // Display Counter 1 or Counter 2 based on the current value
            CounterView(title: "Counter 1", count: $number1)
            CounterView(title: "Counter 2", count: $number2)
            CurrentView(current: $current)


            Spacer()
            
            // Next Counter Button
            if (current == 1) {
                ButtonView(count: $number1, total: $total, current: $current)
            }
            else if (current == 2) {
                ButtonView(count: $number2, total: $total, current: $current)
            }
            
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
