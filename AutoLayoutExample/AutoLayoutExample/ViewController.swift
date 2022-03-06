//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by 김성욱 on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var colorView: UIView!
    
    @IBAction func tapChangeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor=UIColor.blue
        print("색상 번경 버튼이 클릭되었음")
    }
}

