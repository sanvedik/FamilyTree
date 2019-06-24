//
//  MoyaNetworkAdapter.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation
import Moya

class MoyaNetworkAdapter: INetworkAdapter {
    
    struct Target: TargetType {
        let baseURL: URL
        let path: String
        let method: Moya.Method
        let task: Task
        let headers: [String: String]?
        var sampleData: Data {
            return Data()
        }
    }
    
    private let provider: MoyaProvider<Target>
    private let baseURL: URL
    private var authToken: String?
    
    init(baseURL: URL, authToken: String? = nil) {
        self.provider = MoyaProvider<Target>()
        self.baseURL = baseURL
        self.authToken = authToken
    }
    
    func request<T>(task: INetworkRequest, responseType: T.Type,
                    success: ((T) -> Void)?, failure: ((CustomeError) -> Void)?) where T : INetworkResponse {
        provider.request(prepareTarget(from: task)) { result in
            switch result {
                case .success(let response):
                    switch response.statusCode {
                    case 200:
                        do {
                            let response = try responseType.init(data: response.data)
                            success?(response)
                        } catch let error as CustomeError {
                            failure?(error)
                        } catch {
                            failure?(CustomeError.unexpectedError(error))
                        }
                    case 400:
                        let json = try? response.mapJSON()
                        let message = (json as? [String : String])?["message"]
                        failure?(CustomeError.serverError(message))
                    case 401:
                        break // sendSignOutNotification()
                    case 406:
                        break // oldVersionHandler?()
                    default:
                        failure?(CustomeError.unexpectedStatusCode(response.statusCode))
                }
                case .failure(let error):
                    failure?(CustomeError.adapterError(error))
            }
        }
    }
    
    private func prepareTarget(from request: INetworkRequest) -> Target {
        return Target(
            baseURL: baseURL,
            path: request.path,
            method: MoyaHelper.moyaMethod(from: request.method),
            task: MoyaHelper.moyaTask(from: request),
            headers: nil
        )
    }
}



