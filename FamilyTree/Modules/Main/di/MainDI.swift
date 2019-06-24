//
//  MainDI.swift
//  FamilyTree
//
//  Created by Александр on 22.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import UIKit
import Swinject

class MainDI: IDependensies {
    static func initVCWithDI(_ nvc: UINavigationController?) -> UIViewController {
        let mainVC: MainVC = UIStoryboard.instantiateFromStoryboard()
        let nav = nvc ?? UINavigationController(rootViewController: mainVC)
        
        let mainInteractor = MainInteractor()
        mainInteractor.attachPresenter(mainVC)
        let mainRouter = MainRouter()
        mainRouter.attachNVC(nav)
        
        let conteiner = Container()
        conteiner.register(IMainInteractor.self) { _ in mainInteractor }
        conteiner.register(IMainRouter.self) { _ in mainRouter }
        mainVC.setDependensies(conteiner)
        return nvc != nil ? mainVC : nav
    }
}
