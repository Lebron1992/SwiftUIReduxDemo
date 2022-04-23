import Foundation
import SwiftUIRedux

struct AppState: ReduxState {
    var count: Int
    
    init(count: Int = 0) {
        self.count = count
    }
}
