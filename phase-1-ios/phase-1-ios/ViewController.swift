//
//  ViewController.swift
//  phase-1-ios
//
//  Created by Tiffany Jung on 2020/8/25.
//  Copyright © 2020 Tiffany Jung. All rights reserved.
//
// IB= interface builder
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    func showAlert() {
        let alert = UIAlertController(title:"Warning ",message:"please enter your name",preferredStyle: .alert)
        
        //選項
        let okAction = UIAlertAction(title:"ok",style: .default
        ){(action) in
           NSLog("ok")
        }
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
    }
    // 傳資料到第二頁
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        if (segue.identifier == "segueTo_resultPage"){
            let resultPageViewController = segue.destination as! ResultPageViewController
            resultPageViewController.resultData = nameInput.text
        }
    }
}

