//
//  WWWAPI.swift
//  WQNetWorkRequest
//
//  Created by cheBaidu on 2018/6/28.
//  Copyright © 2018年 车佰度. All rights reserved.
//

import UIKit
import Moya

/// 接口配置
public enum WWWAPI {
    case Login
}

extension WWWAPI : TargetType {
    public var baseURL: URL {
       return URL(string: "")!
    }
    
    public var path: String {
        switch self {
        case .Login:
            return ""
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var task: Task {
        switch self {
        default:
            return .requestPlain
        }
    }
    
    public var validate: Bool {
        return true
    }
    
    public var headers: [String : String]? {
        return nil

    }
    
}

extension String {
    var urlEscaped: String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    var utf8Encoded: Data {
        return self.data(using: .utf8)!
    }
}


