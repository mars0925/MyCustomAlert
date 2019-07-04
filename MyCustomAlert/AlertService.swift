//
//  AlterService.swift
//  MyCustomAlert
//
//  Created by Mars on 2019/7/4.
//  Copyright © 2019 drs24. All rights reserved.
//

import UIKit

class AlertService: NSObject{
    
    /**準備Alert的controler
     *title:提示窗標題
     *body:提示窗內容
     *actionBtTitle:按鈕的內容
     */
    
    func setAlert(title:String, body:String, actionBtTitle:String, completion:@escaping ()->Void ) -> MyAlertViewController {
        let storyBoard:UIStoryboard = UIStoryboard(name: "AlterStoryboard", bundle: .main)
        
        let alertVC:MyAlertViewController = storyBoard.instantiateViewController(withIdentifier: "AlertVC") as! MyAlertViewController
        
        alertVC.alertTitleString = title
        alertVC.alertBody = body
        alertVC.actionButtonTitle = actionBtTitle
        alertVC.buttonAction = completion//callback
        
        return alertVC
    }
}
