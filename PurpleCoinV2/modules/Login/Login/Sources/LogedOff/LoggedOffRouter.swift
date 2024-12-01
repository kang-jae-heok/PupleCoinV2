//
//  LoggedOffRouter.swift
//  Login
//
//  Created by 강재혁 on 12/1/24.
//

import RIBs

protocol LoggedOffInteractable: Interactable {
    var router: LoggedOffRouting? { get set }
    var listener: LoggedOffListener? { get set }
}

protocol LoggedOffViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class LoggedOffRouter: ViewableRouter<LoggedOffInteractable, LoggedOffViewControllable>, LoggedOffRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: LoggedOffInteractable, viewController: LoggedOffViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
