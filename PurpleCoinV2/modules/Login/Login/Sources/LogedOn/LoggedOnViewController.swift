//
//  LoggedOnViewController.swift
//  Login
//
//  Created by 강재혁 on 12/1/24.
//

import RIBs
import RxSwift
import UIKit

protocol LoggedOnPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class LoggedOnViewController: UIViewController, LoggedOnPresentable, LoggedOnViewControllable {

    weak var listener: LoggedOnPresentableListener?
}
