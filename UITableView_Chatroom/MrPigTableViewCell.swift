//
//  MrPigTableViewCell.swift
//  UITableView_Chatroom
//
//  Created by Cooper on 2020/10/19.
//

import UIKit

class MrPigTableViewCell: UITableViewCell {
    @IBOutlet weak var pigTextView: UITextView!
    
    
    
    //泡泡框 & 文字上下左右的間距
override func awakeFromNib() {
    super.awakeFromNib()
    pigTextView.textContainerInset = .init(top: 10, left: 10, bottom: 10, right: 10)
    
    pigTextView.layer.cornerRadius = 20
   
}

override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
}
    
    
    
}
