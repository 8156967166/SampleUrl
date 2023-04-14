//
//  ViewController.swift
//  SampleUrl
//
//  Created by Rabin on 14/04/23.
//

//https://dummyjson.com/products

import UIKit

class ViewController: UIViewController {
 
    var modelsss: Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getNewtorking()
    }
    
    func getNewtorking() {
        Networking.networking.getApi { dataResponse, isSuccess, message in
            if isSuccess == true {
                if let datass = dataResponse {
                    print(datass)
                    do {
                        
                        self.modelsss = try JSONDecoder().decode(Model.self, from: datass)
                        print(self.modelsss?.products[1].title)
                        
//                        let json = try JSONSerialization.jsonObject(with: datass)
//                        print(json)
                        
//                        if let value = json as
                    }catch {
                        print("Error")
                    }
                }
            }else {
                print("error")
            }
        }
    }


}

