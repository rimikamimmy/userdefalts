//
//  ViewController.swift
//  userdefalts
//
//  Created by Rimika Inoguchi on 2018/05/31.
//  Copyright © 2018年 Rimika Inoguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fruitlabel: UILabel!
    @IBOutlet weak var vegelabel: UILabel!
    
    
    @IBOutlet weak var fruittext: UITextField!
    @IBOutlet weak var vegetext: UITextField!
    
    @IBOutlet weak var save: UIButton!
    
    
    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //保存するためのまず読み込むためのコード
        if saveData.object(forKey: "fruit") != nil{
            fruittext.text = (saveData.object(forKey: "fruit") as! String)
        }
        
        if saveData.object(forKey: "vegetable") != nil{
            vegetext.text = (saveData.object(forKey: "vegetable") as! String)
        }
   
    }

    //保存ボタン押した後の動作＝保存という行為
    @IBAction func saveWord(){
        
        let fruit :String = fruittext.text!
        saveData.set(fruit, forKey: "fruit")
        
        let vegetable :String = vegetext.text!
        saveData.set(vegetable, forKey: "vegetable")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

