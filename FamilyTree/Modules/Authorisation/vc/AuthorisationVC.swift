//
//  AuthorisationVC.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import UIKit
import Swinject

class AuthorisationVC: DependensiesVC {
    
    private var interactor: IAuthorisationInteractor? {
        return dependensis?.resolve(IAuthorisationInteractor.self)
    }
    private var router: IAuthorisationRouter? {
        return dependensis?.resolve(IAuthorisationRouter.self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    
    @IBAction private func didTapRegistrationButton() {
        router?.showRegistration()
    }
}

extension AuthorisationVC: IAuthorisationPresenter {
    
}
