//
//  NetworkUserLayer.swift
//  FamilyTree
//
//  Created by Александр on 23.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

class NetworkUserLayer: INetworkUserLayer {
    
    private let providers: NetworkProvaders
    
    init(_ providers: NetworkProvaders) {
        self.providers = providers
    }
}
