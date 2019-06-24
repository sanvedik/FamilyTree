//
//  RootRouter.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import UIKit
import Swinject

class RootRouter {
    private var window: UIWindow?
    
    //MARK: - Private
    
    private func showAuthorisation() {
        guard let window = self.window else { return }
        window.rootViewController = AuthorisationDI.initVCWithDI(nil)
    }
    
    private func showMain() {
        guard let window = self.window else { return }
        window.rootViewController = MainDI.initVCWithDI(nil)
    }
}

extension RootRouter: IRootRouter {
    
    func setWindow(_ window: UIWindow?) {
        self.window = window
    }
    
    func showRoot(isAuthorisation: Bool) {
        if !isAuthorisation {
            showAuthorisation()
        } else {
            showMain()
        }
    }
}
