//
//  FirstViewController.swift
//  しゅくまる
//
//  Created by miyu.s on 2017/09/02.
//  Copyright © 2017年 miyu.s. All rights reserved.
//

import UIKit

class tableViewList: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    var imgArray = Array<String>()
    var label2Array = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgArray = [String](repeating: "", count: label2Array.count)

        
        for n in 0..<label2Array.count {
            
            switch label2Array[n]{
                
            case "かんじドリル":
                imgArray[n] = "かんじドリルai"
                break
            case "けいさんドリル":
                imgArray[n] = "けいさんドリルai"
                break
            case "さくぶん":
                imgArray[n] = "さくぶんai"
                break
            case "おんどく":
                imgArray[n] = "おんどくai"
                break
            case "こくご":
                imgArray[n] = "こくごai"
                break
            case "さんすう":
                imgArray[n] = "さんすうai"
                break
            case "しゃかい":
                imgArray[n] = "しゃかいai"
                break
            case "りか":
                imgArray[n] = "りかai"
                break
            case "がいこくご":
            imgArray[n] = "そのたai"
                break
            default:
                break
            }
        }
    }
    
    //TableViewセルの数を指定
    func tableView(_ table: UITableView, numberOfRowsInSection section: Int) -> Int {
        return label2Array.count
    }
    
    //各セルの要素を設定する
    func tableView(_ table: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //tableCellのIDでUITableViewCellのインスタンスを生成
        let cell = table.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        //Tag番号1でUIImageViewインスタンスの生成
        let imageView1 = cell.viewWithTag(1) as! UIImageView
        imageView1.image = UIImage(named: imgArray[indexPath.row])
        
        //Tag番号2でUILabelインスタンスの生成
        let label1 = cell.viewWithTag(2) as! UILabel
        label1.text = String(describing: label2Array[indexPath.row])
        
        //Tag番号3でUIButtonインスタンスの生成
        _ = cell.viewWithTag(3) as! UIButton
        
        //Tag番号4でUIImageViewインスタンスの生成
        _ = cell.viewWithTag(4) as! UIImageView
        
        return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
        
    }
    

}
