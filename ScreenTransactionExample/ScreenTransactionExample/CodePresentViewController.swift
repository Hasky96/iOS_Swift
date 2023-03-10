//
//  CodePresentViewController.swift
//  screenTransactionExample
//
//  Created by HaseokJang on 2023/01/26.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name : String?
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }

    }
    
    @IBAction func tapBack(_ sender: UIButton) {
        self.delegate?.sendData(name: "senenenenen")
        self.presentingViewController?.dismiss(animated: true)
    }
    

}
