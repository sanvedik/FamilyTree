//
//  ObjectResponse.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

class ObjectResponse<T: Decodable>: INetworkResponse {
    let object: T
    
    required init(data: Data) throws {
        do {
            object = try JSONDecoder().decode(T.self, from: data)
        } catch let error {
            throw CustomeError.objectMapError(error, String(data: data, encoding: .utf8))
        }
    }
}
