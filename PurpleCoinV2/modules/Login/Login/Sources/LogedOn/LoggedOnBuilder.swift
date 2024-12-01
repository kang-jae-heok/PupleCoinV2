//
//  LoggedOnBuilder.swift
//  Login
//
//  Created by 강재혁 on 12/1/24.
//

import RIBs

protocol LoggedOnDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class LoggedOnComponent: Component<LoggedOnDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol LoggedOnBuildable: Buildable {
    func build(withListener listener: LoggedOnListener) -> LoggedOnRouting
}

final class LoggedOnBuilder: Builder<LoggedOnDependency>, LoggedOnBuildable {

    override init(dependency: LoggedOnDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: LoggedOnListener) -> LoggedOnRouting {
        let component = LoggedOnComponent(dependency: dependency)
        let viewController = LoggedOnViewController()
        let interactor = LoggedOnInteractor(presenter: viewController)
        interactor.listener = listener
        return LoggedOnRouter(interactor: interactor, viewController: viewController)
    }
}
