//
//  MissButterflyTableViewCell.swift
//  UITableView_Chatroom
//
//  Created by Cooper on 2020/10/19.
//

import UIKit

class MissButterflyTableViewCell: UITableViewCell {
    @IBOutlet weak var butterflyTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        butterflyTextView.textContainerInset = .init(top: 10, left: 10, bottom: 10, right: 10)
        butterflyTextView.layer.cornerRadius = 20
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
