//
//  MoyaHelper.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import Moya

class MoyaHelper {
    
    static func moyaMethod(from method: HTTPMethod) -> Moya.Method {
        switch method {
        case .GET: return .get
        case .POST: return .post
        case .PUT: return .put
        case .DELETE: return .delete
        }
    }
    
    static func moyaTask(from request: INetworkRequest) -> Task {
        
        if let data = request.body {
            if let params = request.urlParameters {
                return .requestCompositeData(bodyData: data, urlParameters: params)
            } else {
                return .requestData(data)
            }
        } else {
            if let params = request.urlParameters {
                return .requestParameters(parameters: params, encoding: URLEncoding.default)
            } else {
                return .requestPlain
            }
        }
    }
}

