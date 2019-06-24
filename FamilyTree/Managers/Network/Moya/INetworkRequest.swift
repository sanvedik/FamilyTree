//
//  NetworkRequest.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case GET, POST, PUT, DELETE
}

protocol INetworkRequest {
    var method: HTTPMethod { get }
    var path: String { get }
    var urlParameters: [String : Any]? { get }
    var body: Data? { get }
}

extension INetworkRequest {
    var method: HTTPMethod { return .GET }
    var urlParameters: [String: Any]? { return nil }
    var body: Data? { return nil }
}


