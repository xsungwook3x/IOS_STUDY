//
//  CodePresentViewController.swift
//  ScreenTransactionExample
//
//  Created by 김성욱 on 2022/03/07.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
