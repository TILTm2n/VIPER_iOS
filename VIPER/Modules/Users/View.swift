//
//  View.swift
//  VIPER
//
//  Created by Eugene on 17.05.2022.
//

import Foundation
import UIKit

//ViewController
//protocol
//reference presenter

class UserViewController: UIViewController, AnyView {
    
    var presenter: AnyPresenter?
    
    private let tableView: UITableView = {
        let table = UITableView()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func update(with users: [User]) {
        
    }
    
    func update(with users: String) {
        
    }
}
