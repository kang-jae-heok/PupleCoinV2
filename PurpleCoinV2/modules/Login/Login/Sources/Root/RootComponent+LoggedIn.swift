//
//  RootComponent+LoggedIn.swift
//  Login
//
//  Created by 강재혁 on 12/2/24.
//

import RIBs

/// The dependencies needed from the parent scope of Root to provide for the LoggedIn scope.
// TODO: Update RootDependency protocol to inherit this protocol.
protocol RootDependencyLoggedIn: Dependency {

    // TODO: Declare dependencies needed from the parent scope of Root to provide dependencies
    // for the LoggedIn scope.
}

extension RootComponent: LoggedInDependency {

    var LoggedInViewController: LoggedInViewControllable {
        return rootViewController
    }
}

