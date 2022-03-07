//
//  ViewController.swift
//  ScreenTransactionExample
//
//  Created by 김성욱 on 2022/03/07.
//

import UIKit

class ViewController: UIViewController,SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!

      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else{ return }
        
        viewController.name="Ugi"
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController =
                self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return }
        
        //viewController.modalPresentationStyle = .fullScreen 모달창 전체 화면으로 만들기
        viewController.name="Ugi"
        
        self.present(viewController, animated: true , completion:  nil )
    }
    
    func sendData(name: String){
        self.nameLabel.text=name
        self.nameLabel.sizeToFit()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SuguePushViewController{
            viewController.name="uGi"
        }
    }
}

