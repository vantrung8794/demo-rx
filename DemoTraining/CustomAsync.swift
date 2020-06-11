//
//  CustomAsync.swift
//  DemoTraining
//
//  Created by TrungNV on 6/10/20.
//  Copyright © 2020 TTC Solutions VietNam. All rights reserved.
//

import Foundation

class CustomAsync {
    class func callApi(name: String, completion: ((_ data: [String]) -> Void)?) {
        // gia su la goi api
        let listResponse = ["1", "2", "3", "4"]
        if let complete = completion {
            complete(listResponse)
        }
    }
}
