//
//  ViewController.swift
//  ScreenTransactionExample
//
//  Created by 김성욱 on 2022/03/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController")else{ return }
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController =
                self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController")else { return }
        
        //viewController.modalPresentationStyle = .fullScreen 모달창 전체 화면으로 만들기
        
        self.present(viewController, animated: true , completion:  nil )
    }
}

