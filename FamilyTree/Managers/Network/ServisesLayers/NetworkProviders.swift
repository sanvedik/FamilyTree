//
//  NetworServises.swift
//  FamilyTree
//
//  Created by Александр on 23.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

class NetworkProvaders {
    let server: INetworkAdapter
    
    init() {
        server = MoyaNetworkAdapter(baseURL: URL(string: "sdfsdf")!)
    }
}
