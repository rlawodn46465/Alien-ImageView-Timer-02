//
//  ViewController.swift
//  Alien ImageView Timer 02
//
//  Created by dit08 on 2019. 3. 28..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    var count = 1
    //Timer 객체 선언
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView.image = UIImage(named: "frame\(count).png")
        countLabel.text = String(count)
    }
    @IBAction func playBtnPressed(_ sender: Any) {
        if (!myTimer.isValid){
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
        }
    }
    @IBAction func pauseBtnPressed(_ sender: Any) {
        myTimer.invalidate()
    }
    @IBAction func stopBtnPressed(_ sender: Any) {
        myTimer.invalidate()
        count = 0
    }
    
    //Timer에서 호출되는 함수 정의
    @objc func doAnimation() {
        count+=1
         if count == 6 {
            count = 1
        }
        myImageView.image = UIImage(named: "frame\(count).png")
        countLabel.text = String(count)
        
    }

}

