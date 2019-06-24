//
//  IDependensies.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import UIKit

protocol IDependensies: class {
    static func initVCWithDI(_ nvc: UINavigationController?) -> UIViewController
}

