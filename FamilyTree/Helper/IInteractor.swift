//
//  IDependensies.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import UIKit

protocol IInteractor: class {
    func attachPresenter(_ presenter: IPresenter)
}

extension IInteractor {
    var networkLayers: NetworkLayers {
        return (UIApplication.shared.delegate as! AppDelegate).networkLayers
    }
}
