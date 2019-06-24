//
//  ArrayResponse.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

class ArrayResponse<T: Decodable>: INetworkResponse {
    
    let array: [T]
    
    required init(data: Data) throws {
        do {
            array = try JSONDecoder().decode([T].self, from: data)
        } catch let error {
            throw CustomeError.arrayMapError(error, String(data: data, encoding: .utf8))
        }
    }
}
