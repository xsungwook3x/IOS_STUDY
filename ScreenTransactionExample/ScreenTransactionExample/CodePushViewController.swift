//
//  CodePushViewController.swift
//  ScreenTransactionExample
//
//  Created by 김성욱 on 2022/03/07.
//

import UIKit

protocol SendDataDelegate : AnyObject{
    func sendData(name: String)
}

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?//weak 붙여줘야함 메모리때문에
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text=name
            self.nameLabel.sizeToFit()
        }
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "ugi")
        self.navigationController?.popViewController(animated: true)
    }
}
