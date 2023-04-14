//
//  Networking.swift
//  SampleUrl
//
//  Created by Rabin on 14/04/23.
//

import Foundation

class Networking: NSObject {
    static let networking = Networking()
    
    func getApi(complition: @escaping(Data?, Bool, String)->Void) {
        let url = "https://dummyjson.com/products"
        guard let url = URL(string: url) else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                complition(data, true, "Success")
            }else {
                complition(nil, false, "failed")
            }
        }
        task.resume()
    }
}
