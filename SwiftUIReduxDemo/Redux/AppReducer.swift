import Foundation
import SwiftUIRedux

func appReducer(state: AppState, action: Action) -> AppState {
    var newState = state
    switch action {
    case let increment as Increment:
        newState.count += increment.by
    default:
        break
    }
    return newState
}
