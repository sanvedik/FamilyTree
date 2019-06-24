//
//  AuthorisationDI.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import UIKit
import Swinject

class AuthorisationDI: IDependensies {
    static func initVCWithDI(_ nvc: UINavigationController?) -> UIViewController {
        let authorisationVC: AuthorisationVC = UIStoryboard.instantiateFromStoryboard()
        let nav = nvc ?? UINavigationController(rootViewController: authorisationVC)
        
        let authorisationInteractor = AuthorisationInteractor()
        authorisationInteractor.attachPresenter(authorisationVC)
        let authorisationRouter = AuthorisationRouter()
        authorisationRouter.attachNVC(nav)
        
        let container = Container()
        container.register(IAuthorisationInteractor.self) { _ in authorisationInteractor }
        container.register(IAuthorisationRouter.self) { _ in authorisationRouter }
        authorisationVC.setDependensies(container)
        return nvc != nil ? authorisationVC : nav
    }
}
