//
//  CustomCellDelegate.swift
//  CustomTableView
//
//  Created by Zion Perez on 4/2/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import Foundation
import UIKit

protocol CustomCellDelegate: class {
    func cell(cell: UITableViewCell, updatedCustomTextField textField: UITextField)
}
