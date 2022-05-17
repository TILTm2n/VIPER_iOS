//
//  ServerService.swift
//  VIPER
//
//  Created by Eugene on 16.05.2022.
//

import Foundation
import UIKit

class ServerService: ServerServiceProtocol {
    
    var urlRatesSource: String {
        return "https://free.currencyconverterapi.com"
    }
    
    func openUrl(with urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url)
        }
    }
    
}
