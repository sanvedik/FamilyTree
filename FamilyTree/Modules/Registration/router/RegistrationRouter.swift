//
//  RegistrationRouter.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import UIKit

class RegistrationRouter {
    private var nvc: UINavigationController?
    
}

extension RegistrationRouter: IRegistrationRouter {
    func attachNVC(_ nvc: UINavigationController?) {
        self.nvc = nvc
    }
    func showAuthorisation() {
        nvc?.popViewController(animated: true)
    }
}
