//
//  ViewController.swift
//  MyCustomAlert
//
//  Created by Mars on 2019/7/4.
//  Copyright © 2019 drs24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let alertService:AlertService = AlertService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openAlert(_ sender: UIButton) {
        print("open Alert")
        let alertVC:MyAlertViewController = alertService.setAlert(title: "要不要訂閱", body: "拜託訂閱一下",
                                                                  actionBtTitle: "訂閱"){
                                                                    
                                                                    print("你已經訂閱")
        }
        present(alertVC, animated: true, completion: nil)
    }
}

