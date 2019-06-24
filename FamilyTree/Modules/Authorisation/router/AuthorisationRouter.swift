//
//  AuthorisationRouter.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import UIKit
import Swinject

class AuthorisationRouter {
    private var nvc: UINavigationController?
    
}

extension AuthorisationRouter: IAuthorisationRouter {
    func attachNVC(_ nvc: UINavigationController?) {
        self.nvc = nvc
    }
    
    func showRegistration() {
        nvc?.pushViewController(RegistrationDI.initVCWithDI(nvc), animated: true)
    }
}
