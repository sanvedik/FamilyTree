//
//  NetworkResponse.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

protocol INetworkResponse {
    
    init(data: Data) throws
}
