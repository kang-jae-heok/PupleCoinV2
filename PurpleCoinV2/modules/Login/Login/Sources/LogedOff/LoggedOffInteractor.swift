//
//  LoggedOffInteractor.swift
//  Login
//
//  Created by 강재혁 on 12/1/24.
//

import RIBs
import RxSwift

protocol LoggedOffRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol LoggedOffPresentable: Presentable {
    var listener: LoggedOffPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol LoggedOffListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class LoggedOffInteractor: PresentableInteractor<LoggedOffPresentable>, LoggedOffInteractable, LoggedOffPresentableListener {

    weak var router: LoggedOffRouting?
    weak var listener: LoggedOffListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: LoggedOffPresentable) {
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
