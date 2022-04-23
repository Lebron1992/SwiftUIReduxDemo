import Combine
import SwiftUIRedux
import Foundation

struct Increment: Action {
    let by: Int
}

class AsyncIncrement: AsyncAction {
    let by: Int

    init(by: Int) {
        self.by = by
    }

    private var cancellable: AnyCancellable?

    func async(dispatch: @escaping Dispatch, state: ReduxState?) {
        cancellable = Just(())
            .delay(for: 1, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
            .sink { [weak self] in
                guard let self = self else { return }
                dispatch(Increment(by: self.by))
            }
    }

    func cancel() {
        cancellable?.cancel()
    }
}
