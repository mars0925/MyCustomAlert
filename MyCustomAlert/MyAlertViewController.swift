//
//  MyAlertViewController.swift
//  MyCustomAlert
//
//  Created by Mars on 2019/7/4.
//  Copyright © 2019 drs24. All rights reserved.
//

import UIKit

class MyAlertViewController: UIViewController {
    
    @IBOutlet weak var alertTitle: UILabel!
    @IBOutlet weak var actionBT: UIButton!
    @IBOutlet weak var body: UILabel!
    
    var alertTitleString = String()
    var alertBody = String()
    var actionButtonTitle = String()
    
    var buttonAction:(()->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        alertTitle.text = alertTitleString
        body.text = alertBody
        actionBT.setTitle(actionButtonTitle, for: .normal)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func action(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
        
        buttonAction?()
    }
}
