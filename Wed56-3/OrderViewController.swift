//
//  OrderViewController.swift
//  Wed56-3
//
//  Created by SWUCOMPUTER on 2017. 9. 27..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    var info: String?  //넘어온 값을 받을 변수
    
    override func viewDidLoad() { //하나의 뷰가 화면에 나타날때 실행되는 함수
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let ttt = info {   //info는 첫번째 뷰에서 넘어온 것. optional로 선언되었으니 nil일 수도 있다.
            infoLabel.text =  ttt
        }
    }
}
