//
//  ApiRest.swift
//  brastlewark
//
//  Created by Hugo Morelli on 07/11/2017.
//  Copyright © 2017 Hugo Morelli. All rights reserved.
//

import Foundation
import Moya

private func JSONResponseDataFormatter(_ data: Data) -> Data {
    do {
        let dataAsJSON = try JSONSerialization.jsonObject(with: data)
        let prettyData = try JSONSerialization.data(withJSONObject: dataAsJSON, options: .prettyPrinted)
        return prettyData
    } catch {
        return data // fallback to original data if it can't be serialized.
    }
}

let restClientProvider = RxMoyaProvider<ApiRest>(plugins:
    [NetworkLoggerPlugin(verbose: false, responseDataFormatter: JSONResponseDataFormatter)])

enum ApiRest {

    case getGnomes()

}
extension ApiRest: TargetType {

    var headers: [String: String]? {
        return nil
    }

    var baseURL: URL {
        return URL(string: "https://raw.githubusercontent.com/")!
    }

    var path: String {
        switch self {
        default: return "rrafols/mobile_test/master/data.json"

        }
    }

    var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }

    var parameters: [String: Any]? {
        switch self {
        default:
            return nil

        }

    }

    var parameterEncoding: ParameterEncoding {
        switch self {
        default:
            return URLEncoding.default// Send parameters in URL
        }
    }

    var sampleData: Data {
        return "Data de texto".data(using: String.Encoding.utf8)!
    }

    var task: Task {
        switch self {
        default:
            return .request
        }
    }
}

// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data {
        return self.data(using: .utf8)!
    }

}
