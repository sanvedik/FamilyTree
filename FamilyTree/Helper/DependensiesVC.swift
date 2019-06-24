//
//  DependensiesVC.swift
//  FamilyTree
//
//  Created by Александр on 23.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import UIKit
import Swinject

class DependensiesVC: UIViewController {
    
    var dependensis: Container?
    
    func setDependensies(_ conteiner: Container) {
        self.dependensis = conteiner
    }
}
