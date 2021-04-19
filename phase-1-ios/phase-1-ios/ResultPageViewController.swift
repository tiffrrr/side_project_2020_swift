//
//  ResultPageViewController.swift
//  phase-1-ios
//
//  Created by Tiffany Jung on 2020/8/27.
//  Copyright © 2020 Tiffany Jung. All rights reserved.
//

import UIKit

class ResultPageViewController: UIViewController {
    // 接來的資料顯示在這
    @IBOutlet weak var resultArea: UILabel!
    var resultData:String?
    
    
    
  // 用navigation slack的方式，自動返回上一頁
    @IBAction func returnBtn(_ sender: Any) {
        self.dismiss(animated:true,completion:nil)
    }
    
    

    // show alert
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title:"show alert",message:"hihi",preferredStyle: .alert)
        
        //選項
        let okAction = UIAlertAction(title:"ok",style: .default
        ){(action) in
            NSLog("ok")        }
        let cancelAction = UIAlertAction(title:"cancel",style: .cancel
        ){(action) in
            NSLog("cancel")
        }
        //把選項加進去
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        //顯示
        self.present(alert,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //從前個頁面接資料。
        if(resultData != nil){
            resultArea.text=resultData
        }
    }
}
