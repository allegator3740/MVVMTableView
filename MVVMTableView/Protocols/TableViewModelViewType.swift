//
//  TableViewModelViewType.swift
//  MVVMTableView
//
//  Created by Oleg on 07.01.2019.
//  Copyright © 2019 Oleg. All rights reserved.
//

import Foundation

protocol TableViewModelViewType {
    var numberOfRows : Int { get }
    var profiles : [Profile] { get }
    
}
