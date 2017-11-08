//
//  RepositoryImpl.swift
//  SwiftTest
//
//  Created by Ramses Velasquez on 2/17/17.
//  Copyright © 2017 CotusCompany. All rights reserved.
//

import Foundation
import ObjectMapper
import RxSwift
import Moya

enum RepoError: Swift.Error {
    case general
}

class RepositoryImpl: Repository {
    
    let localManager: LocalManager
    init (localManager: LocalManager) {
        self.localManager = localManager
    }
    
    //
    //
    // ===================== NETWORK ========================
    //
    // MARK: - NETWORK
    
    func getGnomes() -> Observable<GnomeList> {
        
        return restClientProvider
            .request(.getGnomes())
            .filterSuccessfulStatusCodes()
            .mapString()
            .flatMap { (response) -> Observable<GnomeResponse> in
                let gnomeResponse = GnomeResponse(JSONString: response)
    
                return gnomeResponse != nil ?
                    Observable.just(gnomeResponse!) :
                    Observable.error(RepoError.general)
            }
            .flatMap { (gnomeResponse) -> Observable<GnomeList> in
                let gnomeList = GlobalParser.getGnomeListFromGnomeResponse(response: gnomeResponse)
                return Observable.just(gnomeList)
        }
    }
    //
    //
    // ===================== LOCAL ========================
    //
    // MARK: - LOCAL
    
    //    func getTipsShown() -> Bool {
    //        return localManager.getTipsShown()
    //    }
    //
    //
    // ===================== SESSION ========================
    //
    // MARK: - SESSION
    
    //    func setSessionLocationsList(locationsList: LocationsList) {
    //        SingletonManager.sharedInstance.locationList = locationsList
    //    }
    
    // Creo que ya no se usa se puede quitar
    // Pasar esta funcion a otra clase
    func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
}
