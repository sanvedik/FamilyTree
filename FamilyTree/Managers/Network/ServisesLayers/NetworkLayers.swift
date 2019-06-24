//
//  NetworkLayers.swift
//  FamilyTree
//
//  Created by Александр on 23.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

class NetworkLayers {
    var userLayer: INetworkUserLayer
    
    init(_ providers: NetworkProvaders) {
        userLayer = NetworkUserLayer(providers)
    }
}
