//
//  MyTableViewCell.swift
//  CustomTableView
//
//  Created by Zion Perez on 4/1/17.
//  Copyright © 2017 Zion Perez. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell, UITextFieldDelegate {

    weak var delegate: CustomCellDelegate?
    @IBOutlet weak var textField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        // Add a "textFieldDidChange" notification method to the text field control.
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
    }

    func textFieldDidChange(_ textField: UITextField) {
        delegate?.cell(cell: self, updatedCustomTextField: textField)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
