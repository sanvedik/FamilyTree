//
//  RegistrationVC.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import UIKit
import Swinject

class RegistrationVC: DependensiesVC {
    
    private var router: IRegistrationRouter? {
        return dependensis?.resolve(IRegistrationRouter.self)
    }
    private var interactor: IRegistrationInteractor? {
        return dependensis?.resolve(IRegistrationInteractor.self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - Actions
    
    @IBAction private func didTapAuthorisationButton() {
        router?.showAuthorisation()
    }
}

extension RegistrationVC: IRegistrationPresenter {
    
}
