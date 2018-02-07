//
//  ResultViewController.swift
//  Gacha
//
//  Created by 曽根大輔 on 2018/02/01.
//  Copyright © 2018年 曽根大輔. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
     //乱数を入れるためのInt型の変数を用意
    
    var number: Int!
    
    //背景画像とモンスター画像を表示するためのimageviewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        number = Int(arc4random_uniform(10))
        
        if number == 9{
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named:"bg_gold")
            
        } else if number > 7 {
            monsterImageView.image = UIImage(named:"monster006")
            backgroundImageView.image = UIImage(named:"bg_red")
            
        } else {
            monsterImageView.image = UIImage(named:"monster003")
            backgroundImageView.image = UIImage(named:"bg_blue")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
