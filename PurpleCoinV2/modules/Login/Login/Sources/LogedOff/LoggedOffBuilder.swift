//
//  LoggedOffBuilder.swift
//  Login
//
//  Created by 강재혁 on 12/1/24.
//

import RIBs

protocol LoggedOffDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class LoggedOffComponent: Component<LoggedOffDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol LoggedOffBuildable: Buildable {
    func build(withListener listener: LoggedOffListener) -> LoggedOffRouting
}

final class LoggedOffBuilder: Builder<LoggedOffDependency>, LoggedOffBuildable {

    override init(dependency: LoggedOffDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: LoggedOffListener) -> LoggedOffRouting {
        let component = LoggedOffComponent(dependency: dependency)
        let viewController = LoggedOffViewController()
        let interactor = LoggedOffInteractor(presenter: viewController)
        interactor.listener = listener
        return LoggedOffRouter(interactor: interactor, viewController: viewController)
    }
}
