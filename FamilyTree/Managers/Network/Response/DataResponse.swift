//
//  DataResponse.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

class DataResponse: INetworkResponse {
    
    let data: Data
    
    required init(data: Data) throws {
        self.data = data
    }
}
