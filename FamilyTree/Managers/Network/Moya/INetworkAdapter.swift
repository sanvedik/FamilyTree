//
//  NetworkAdapter.swift
//  FamilyTree
//
//  Created by Александр on 21.06.2019.
//  Copyright © 2019 Александр. All rights reserved.
//

import Foundation

protocol INetworkAdapter {
    
    func request<T: INetworkResponse>(
        task: INetworkRequest,
        responseType: T.Type,
        success: ((T) -> Void)?,
        failure: ((CustomeError) -> Void)?
    )
}


