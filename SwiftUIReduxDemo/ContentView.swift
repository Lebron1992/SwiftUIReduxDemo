import SwiftUI
import SwiftUIRedux

struct ContentView: View {
    @EnvironmentObject
    var store: Store<AppState>

    @State
    var asyncIncrement: AsyncIncrement?

    var body: some View {
        VStack(spacing: 10) {
            Text("\(store.state.count)")
            Button("Add 1") {
                store.dispatch(action: Increment(by: 1))
            }
            Button("Async Add 1") {
                asyncIncrement?.cancel()
                asyncIncrement = AsyncIncrement(by: 1)
                store.dispatch(action: asyncIncrement!)
            }
            Button("Async Add 2") {
                asyncIncrement?.cancel()
                asyncIncrement = AsyncIncrement(by: 2)
                store.dispatch(action: asyncIncrement!)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
