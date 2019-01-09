//
//  ViewModel.swift
//  MVVMTableView
//
//  Created by Oleg on 07.01.2019.
//  Copyright © 2019 Oleg. All rights reserved.
//

import Foundation
import UIKit



class ViewModel : TableViewModelViewType {
    var numberOfRows: Int {
        return profiles.count
    }
    
    var profiles = [Profile(name: "Robert", surname: "Ignatov", age: 23), Profile(name: "Maxim", surname: "Petuhov", age: 37), Profile(name: "Klusha", surname: "Mamedova", age: 42)]
    
}
