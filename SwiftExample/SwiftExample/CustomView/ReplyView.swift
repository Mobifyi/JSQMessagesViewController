//
//  ReplyView.swift
//  SwiftExample
//
//  Created by Sachin Nautiyal on 09/03/2018.
//  Copyright © 2018 MacMeDan. All rights reserved.
//

import UIKit
import JSQMessagesViewController

protocol ReplyViewDismissDelegate {
    func replyViewClosedButtonSelected(_ : UIView)
    func replyMessageSelected(withMessageObj : JSQMessage)
}

class ReplyView: UIView {

    @IBOutlet weak var userNameOutlet: UILabel!
    @IBOutlet weak var repliedMessageOutlet: UILabel!
    var selectedMessage : JSQMessage!
    var replyViewDismissDelegate : ReplyViewDismissDelegate?
    
    @IBAction func crossButtonAction(_ sender: UIButton) {
        if let delegate = replyViewDismissDelegate {
            delegate.replyViewClosedButtonSelected(self)
        }
    }
    
    @IBAction func replyMsgButtonAction(_ sender: UIButton) {
        if let delegate = replyViewDismissDelegate {
            delegate.replyMessageSelected(withMessageObj: self.selectedMessage)
        }
    }
}
