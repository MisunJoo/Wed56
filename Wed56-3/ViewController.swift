//
//  ViewController.swift
//  Wed56-3
//
//  Created by SWUCOMPUTER on 2017. 9. 27..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl! //액션은 필요없다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (segue.identifier == "toOrdreView"){
        
            let destVC = segue.destination as! OrderViewController //타입을 가져야할 듯. 왜냐면 info가 없다고나온대.
        
            let selected: String = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex)!
            destVC.title = selected
        
            let makeString: String = "방금 \(selected) 를 선택하셨습니다.\n 감사합니다!!!"
            destVC.info = makeString
        }
    }

}

