//
//  CustomeErrors.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

enum CustomeError: Error, LocalizedError {
    
    case serverError(String?)
    case adapterError(Error)
    case unexpectedError(Error)
    case unexpectedStatusCode(Int)
    case objectMapError(Error, String?)
    case arrayMapError(Error, String?)
    case jsonParseError(Error, String?)
    
    var description: String? {
        switch self {
            case .serverError(let message):
                return message ?? "Unknown network error"
            case .adapterError(let error):
                return error.localizedDescription
            case .unexpectedError(let error):
                return error.localizedDescription
            case .unexpectedStatusCode(let code):
                return "Unexpected status code (\(code))"
            case .arrayMapError(let error, let content):
                var errorString = "Cannot parse data to array: \(error)."
                if let text = content {
                    errorString += "\nContent:\n\(text)"
                }
                return errorString
            case .objectMapError(let error, let content):
                var errorString = "Cannot parse data to object: \(error)."
                if let text = content {
                    errorString += "\nContent:\n\(text)"
                }
                return errorString
            case .jsonParseError(let error, let content):
                var errorString = "CCannot parse data to json dictionary: \(error)."
                if let text = content {
                    errorString += "\nContent:\n\(text)"
                }
                return errorString
        }
    }
}
