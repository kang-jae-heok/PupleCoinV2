//
//  LoggedOnRouter.swift
//  Login
//
//  Created by 강재혁 on 12/1/24.
//

import RIBs

protocol LoggedOnInteractable: Interactable {
    var router: LoggedOnRouting? { get set }
    var listener: LoggedOnListener? { get set }
}

protocol LoggedOnViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class LoggedOnRouter: ViewableRouter<LoggedOnInteractable, LoggedOnViewControllable>, LoggedOnRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: LoggedOnInteractable, viewController: LoggedOnViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
