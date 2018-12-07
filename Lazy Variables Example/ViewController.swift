//
//  ViewController.swift
//  Lazy Variables Example
//
//  Created by Prashant G on 12/7/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var singer = Person()
        print(singer.fibonacciOfAge)
    }


}

struct Person {
    var age = 8
    
    lazy var fibonacciOfAge: Int = {
        return fibonacci(of: self.age)
    }()
    
    func fibonacci(of num: Int) -> Int {
        if num < 2 {
            return num
        } else {
            return fibonacci(of: num - 1) + fibonacci(of: num - 2)
        }
    }
}
