//
//  RegistrationDI.swift
//  FamilyTree
//
//  Created by Александр on 22.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import Swinject
import UIKit

class RegistrationDI: IDependensies {
    static func initVCWithDI(_ nvc: UINavigationController?) -> UIViewController {
        let registrationVC: RegistrationVC = UIStoryboard.instantiateFromStoryboard()
    
        let registrationInteractor = RegistrationInteractor()
        registrationInteractor.attachPresenter(registrationVC)
        
        let registrationRouter = RegistrationRouter()
        registrationRouter.attachNVC(nvc)
        
        let conteiner = Container()
        conteiner.register(IRegistrationInteractor.self) { _ in registrationInteractor }
        conteiner.register(IRegistrationRouter.self) { _ in registrationRouter }
        registrationVC.setDependensies(conteiner)
        return registrationVC
    }
}
