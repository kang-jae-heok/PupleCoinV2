//
//  LoggedOnInteractor.swift
//  Login
//
//  Created by 강재혁 on 12/1/24.
//

import RIBs
import RxSwift

protocol LoggedOnRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol LoggedOnPresentable: Presentable {
    var listener: LoggedOnPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol LoggedOnListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class LoggedOnInteractor: PresentableInteractor<LoggedOnPresentable>, LoggedOnInteractable, LoggedOnPresentableListener {

    weak var router: LoggedOnRouting?
    weak var listener: LoggedOnListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: LoggedOnPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}
