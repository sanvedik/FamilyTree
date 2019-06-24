//
//  JsonResponse.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

class JSONResponse: INetworkResponse {
    
    let json: Any
    
    required init(data: Data) throws {
        do {
            json = try JSONSerialization.jsonObject(with: data)
        } catch let error {
            throw CustomeError.jsonParseError(error, String(data: data, encoding: .utf8))
        }
    }
}
